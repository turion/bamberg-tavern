{-# LANGUAGE DataKinds #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeOperators #-}

module Main where

import Control.Monad.IO.Class (liftIO)
import Data.IORef (IORef, atomicModifyIORef', newIORef, readIORef)
import Data.Maybe (fromMaybe)
import Data.String.Conversions (cs)
import Data.Text (Text)
import Data.Text qualified as Text
import Lucid
import Network.Wai (Application)
import Network.Wai.Handler.Warp (run)
import Servant
import Servant.HTML.Lucid
import Tavern.Booking
import Web.FormUrlEncoded (FromForm (..), parseUnique)

data Lang = English | German deriving (Eq)

data AdminSlotForm = AdminSlotForm
  { slotAdventureInput :: Text
  , slotWhenInput :: Text
  }

data BookForm = BookForm
  { bookingSlotIdInput :: Int
  , bookingNameInput :: Text
  , bookingLangInput :: Text
  }

instance FromForm AdminSlotForm where
  fromForm f = AdminSlotForm <$> parseUnique "adventure" f <*> parseUnique "when" f

instance FromForm BookForm where
  fromForm f = BookForm <$> parseUnique "slotId" f <*> parseUnique "name" f <*> parseUnique "lang" f

type API =
  Get '[HTML] (Html ())
    :<|> "en" :> Get '[HTML] (Html ())
    :<|> "de" :> Get '[HTML] (Html ())
    :<|> "admin" :> Get '[HTML] (Html ())
    :<|> "admin" :> "slots" :> ReqBody '[FormUrlEncoded] AdminSlotForm :> Post '[HTML] (Html ())
    :<|> "book" :> ReqBody '[FormUrlEncoded] BookForm :> Post '[HTML] (Html ())
    :<|> "api" :> "slots" :> Get '[JSON] [SlotView]

main :: IO ()
main = do
  state <- newIORef emptyBookingState
  putStrLn "bamberg-tavern server at http://localhost:8080"
  run 8080 (app state)

app :: IORef BookingState -> Application
app bookingState = serve (Proxy @API) (server bookingState)

server :: IORef BookingState -> Server API
server bookingState =
  renderHome bookingState English Nothing
    :<|> renderHome bookingState English Nothing
    :<|> renderHome bookingState German Nothing
    :<|> renderAdmin bookingState Nothing
    :<|> adminCreateSlot bookingState
    :<|> bookSlotHandler bookingState
    :<|> (toSlotViews <$> liftIO (readIORef bookingState))

adminCreateSlot :: IORef BookingState -> AdminSlotForm -> Handler (Html ())
adminCreateSlot bookingState form =
  case adventureFromText (slotAdventureInput form) of
    Nothing -> renderAdmin bookingState (Just "Unknown adventure.")
    Just adventure -> do
      let whenText = Text.strip (slotWhenInput form)
      if Text.null whenText
        then renderAdmin bookingState (Just "Please provide a date/time value.")
        else do
          let update st =
                let (newSlot, st') = addSlot adventure whenText st
                 in (st', newSlot)
          newSlot <- liftIO (atomicModifyIORef' bookingState update)
          renderAdmin bookingState (Just ("Added slot #" <> tshow (slotId newSlot) <> "."))

bookSlotHandler :: IORef BookingState -> BookForm -> Handler (Html ())
bookSlotHandler bookingState form = do
  let lang = fromMaybe English (langFromText (bookingLangInput form))
  result <-
    liftIO . atomicModifyIORef' bookingState $ \st ->
      case bookSlot (bookingSlotIdInput form) (bookingNameInput form) st of
        Left err -> (st, Left err)
        Right st' -> (st', Right ())
  case result of
    Left err -> renderHome bookingState lang (Just err)
    Right () -> renderHome bookingState lang (Just (successText lang))

renderHome :: IORef BookingState -> Lang -> Maybe Text -> Handler (Html ())
renderHome bookingState lang message = do
  views <- toSlotViews <$> liftIO (readIORef bookingState)
  pure (homePage lang views message)

renderAdmin :: IORef BookingState -> Maybe Text -> Handler (Html ())
renderAdmin bookingState message = do
  views <- toSlotViews <$> liftIO (readIORef bookingState)
  pure (adminPage views message)

homePage :: Lang -> [SlotView] -> Maybe Text -> Html ()
homePage lang slotViews message =
  html_ $ do
    head_ $ title_ (toHtml (titleText lang))
    body_ $ do
      h1_ (toHtml (titleText lang))
      p_ (toHtml (introText lang))
      p_ $ do
        a_ [href_ "/en"] "🇬🇧 English"
        toHtml (" | " :: Text)
        a_ [href_ "/de"] "🇩🇪 Deutsch"
        toHtml (" | " :: Text)
        a_ [href_ "/admin"] (toHtml (adminLinkText lang))
      maybe mempty (p_ . toHtml) message
      if null slotViews
        then p_ (toHtml (noSlotsText lang))
        else mapM_ (slotCard lang) slotViews

slotCard :: Lang -> SlotView -> Html ()
slotCard lang (SlotView slot guests) =
  div_ $ do
    h3_ (toHtml (slotHeader lang slot))
    p_ (toHtml (bookedByText lang guests))
    form_ [method_ "post", action_ "/book"] $ do
      input_ [type_ "hidden", name_ "slotId", value_ (tshow (slotId slot))]
      input_ [type_ "hidden", name_ "lang", value_ (langCode lang)]
      label_ $ do
        toHtml (nameLabelText lang)
        input_ [type_ "text", name_ "name", required_ "required"]
      button_ [type_ "submit"] (toHtml (bookButtonText lang))

adminPage :: [SlotView] -> Maybe Text -> Html ()
adminPage slotViews message =
  html_ $ do
    head_ $ title_ "Admin - Bamberg Tavern"
    body_ $ do
      h1_ "Admin slot management"
      p_ $ do
        a_ [href_ "/en"] "🇬🇧 Back to English"
        toHtml (" | " :: Text)
        a_ [href_ "/de"] "🇩🇪 Zur deutschen Seite"
      maybe mempty (p_ . toHtml) message
      h2_ "Create slot"
      form_ [method_ "post", action_ "/admin/slots"] $ do
        label_ $ do
          "Adventure"
          select_ [name_ "adventure"] $ do
            option_ [value_ "queen-kunigunde"] "Queen Kunigunde / Königin Kunigunde"
            option_ [value_ "burning-of-witches"] "Burning of Witches / Hexenverbrennung"
            option_ [value_ "gardeners"] "Gardeners / Gärtner"
        label_ $ do
          "Date/time"
          input_ [type_ "text", name_ "when", required_ "required", placeholder_ "2026-08-15 18:00"]
        button_ [type_ "submit"] "Add slot"
      h2_ "Current slots"
      if null slotViews
        then p_ "No slots yet."
        else ul_ (mapM_ adminSlotItem slotViews)

adminSlotItem :: SlotView -> Html ()
adminSlotItem (SlotView slot guests) =
  li_ $ toHtml ("#" <> tshow (slotId slot) <> " - " <> adventureLabelEn (slotAdventure slot) <> " - " <> slotWhen slot <> " (bookings: " <> tshow (length guests) <> ")")

langFromText :: Text -> Maybe Lang
langFromText "de" = Just German
langFromText "en" = Just English
langFromText _ = Nothing

langCode :: Lang -> Text
langCode English = "en"
langCode German = "de"

titleText :: Lang -> Text
titleText English = "Book your Bamberg Tavern role-play evening"
titleText German = "Buche deinen Rollenspielabend in der Bamberger Taverne"

introText :: Lang -> Text
introText English = "Choose an adventure and reserve a slot entered by the tavern admin."
introText German = "Wähle ein Abenteuer und buche einen vom Wirt eingetragenen Zeitslot."

adminLinkText :: Lang -> Text
adminLinkText English = "Admin page"
adminLinkText German = "Admin-Seite"

noSlotsText :: Lang -> Text
noSlotsText English = "No slots are available yet. Ask the admin to add one."
noSlotsText German = "Noch keine Slots verfügbar. Bitte den Admin um einen Eintrag."

nameLabelText :: Lang -> Text
nameLabelText English = "Your name"
nameLabelText German = "Dein Name"

bookButtonText :: Lang -> Text
bookButtonText English = "Book slot"
bookButtonText German = "Slot buchen"

successText :: Lang -> Text
successText English = "Booking saved. See you in Bamberg!"
successText German = "Buchung gespeichert. Bis bald in Bamberg!"

slotHeader :: Lang -> Slot -> Text
slotHeader lang slot =
  adventureName lang (slotAdventure slot) <> " - " <> slotWhen slot

adventureName :: Lang -> Adventure -> Text
adventureName English = adventureLabelEn
adventureName German = adventureLabelDe

bookedByText :: Lang -> [Text] -> Text
bookedByText English [] = "No bookings yet"
bookedByText German [] = "Noch keine Buchungen"
bookedByText English names = "Booked by: " <> Text.intercalate ", " names
bookedByText German names = "Gebucht von: " <> Text.intercalate ", " names

tshow :: (Show a) => a -> Text
tshow = cs . show
