{-# LANGUAGE DataKinds #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeOperators #-}

module Main where

import Control.Monad.IO.Class (liftIO)
import Data.IORef (IORef, atomicModifyIORef', newIORef, readIORef)
import Data.Maybe (fromMaybe)
import Data.Text (Text)
import Data.Text qualified as Text
import Lucid
import Network.Wai.Handler.Warp (run)
import Servant
import Servant.HTML.Lucid
import System.Environment (lookupEnv)
import System.Exit (die)
import Tavern.Booking
import Tavern.View
import Web.FormUrlEncoded (FromForm (..), parseUnique)

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
    :<|> "static" :> Raw
    :<|> "pdfs" :> Raw

main :: IO ()
main = do
  port <- maybe 8080 read <$> lookupEnv "PORT"
  staticDir <-
    lookupEnv "BAMBERG_STATIC_DIR" >>= \case
      Just d -> pure d
      Nothing -> die "BAMBERG_STATIC_DIR is not set. Enter the Nix dev shell (nix develop / direnv) or set it manually to the output of `nix build .#static-assets`."
  state <- newIORef emptyBookingState
  pdfDir <- fromMaybe "./result" <$> lookupEnv "PDF_DIR"
  putStrLn $ "bamberg-tavern server at http://localhost:" <> show port <> " (static: " <> staticDir <> ", pdfs: " <> pdfDir <> ")"
  run port (app staticDir state pdfDir)

app :: FilePath -> IORef BookingState -> FilePath -> Application
app staticDir bookingState pdfDir = serve (Proxy @API) (server staticDir bookingState pdfDir)

server :: FilePath -> IORef BookingState -> FilePath -> Server API
server staticDir bookingState pdfDir =
  renderHome bookingState English Nothing
    :<|> renderHome bookingState English Nothing
    :<|> renderHome bookingState German Nothing
    :<|> renderAdmin bookingState Nothing
    :<|> adminCreateSlot bookingState
    :<|> bookSlotHandler bookingState
    :<|> (toSlotViews <$> liftIO (readIORef bookingState))
    :<|> serveDirectoryWebApp staticDir
    :<|> serveDirectoryWebApp pdfDir

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
