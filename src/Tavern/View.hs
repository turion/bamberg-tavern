{-# LANGUAGE OverloadedStrings #-}

module Tavern.View (
  Lang (..),
  langFromText,
  langCode,
  homePage,
  adminPage,
  successText,
  tshow,
) where

import Data.String.Conversions (cs)
import Data.Text (Text)
import Data.Text qualified as Text
import Lucid
import Tavern.Booking

data Lang = English | German deriving (Eq)

pageShell :: Text -> Html () -> Html ()
pageShell titleTxt bodyContent =
  doctypehtml_ $ do
    head_ $ do
      meta_ [charset_ "utf-8"]
      meta_ [name_ "viewport", content_ "width=device-width, initial-scale=1"]
      title_ (toHtml titleTxt)
      link_ [rel_ "stylesheet", href_ "/static/pico.min.css"]
      link_ [rel_ "stylesheet", href_ "/static/theme.css"]
    body_ (main_ bodyContent)

homePage :: Lang -> [SlotView] -> Maybe Text -> Html ()
homePage lang slotViews message =
  pageShell (titleText lang) $ do
    h1_ (toHtml (titleText lang))
    p_ (toHtml (introText lang))
    nav_ $ ul_ $ do
      li_ (a_ [href_ "/en", class_ "lang"] (langBanner "en" "English"))
      li_ (a_ [href_ "/de", class_ "lang"] (langBanner "de" "Deutsch"))
      li_ (a_ [href_ "/admin"] (toHtml (adminLinkText lang)))
    p_ $ do
      toHtml (guidesIntroText lang)
      toHtml (" " :: Text)
      a_ [href_ (playerGuidePdf lang)] (toHtml (playerGuideText lang))
      toHtml (" | " :: Text)
      a_ [href_ (gmGuidePdf lang)] (toHtml (gmGuideText lang))
      toHtml (" | " :: Text)
      a_ [href_ (scenesPdf lang)] (toHtml (scenesLinkText lang))
    maybe mempty (\m -> article_ (p_ (toHtml m))) message
    if null slotViews
      then p_ (toHtml (noSlotsText lang))
      else mapM_ (slotCard lang) slotViews

langBanner :: Text -> Text -> Html ()
langBanner code label = do
  img_ [src_ ("/static/flag-" <> code <> ".svg"), alt_ label, class_ "flag"]
  toHtml label

slotCard :: Lang -> SlotView -> Html ()
slotCard lang (SlotView slot guests) =
  article_ $ do
    header_ (h3_ (toHtml (slotHeader lang slot)))
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
  pageShell "Admin — Bamberg Tavern" $ do
    h1_ "Admin slot management"
    nav_ $ ul_ $ do
      li_ (a_ [href_ "/en"] "🇬🇧 Back to English")
      li_ (a_ [href_ "/de"] "🇩🇪 Zur deutschen Seite")
    maybe mempty (\m -> article_ (p_ (toHtml m))) message
    article_ $ do
      header_ (h2_ "Create slot")
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
    article_ $ do
      header_ (h2_ "Current slots")
      if null slotViews
        then p_ "No slots yet."
        else ul_ (mapM_ adminSlotItem slotViews)

adminSlotItem :: SlotView -> Html ()
adminSlotItem (SlotView slot guests) =
  li_ $ toHtml ("#" <> tshow (slotId slot) <> " — " <> adventureLabelEn (slotAdventure slot) <> " — " <> slotWhen slot <> " (bookings: " <> tshow (length guests) <> ")")

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
  adventureName lang (slotAdventure slot) <> " — " <> slotWhen slot

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

guidesIntroText :: Lang -> Text
guidesIntroText English = "Guides:"
guidesIntroText German = "Handbücher:"

playerGuideText :: Lang -> Text
playerGuideText English = "Player's Guide"
playerGuideText German = "Spielerhandbuch"

gmGuideText :: Lang -> Text
gmGuideText English = "Game Master's Guide"
gmGuideText German = "Spielleiterhandbuch"

scenesLinkText :: Lang -> Text
scenesLinkText English = "Example Scenes"
scenesLinkText German = "Beispielszenen"

playerGuidePdf :: Lang -> Text
playerGuidePdf English = "/pdfs/bamberg-tavern-player-en.pdf"
playerGuidePdf German = "/pdfs/bamberg-tavern-player-de.pdf"

gmGuidePdf :: Lang -> Text
gmGuidePdf English = "/pdfs/bamberg-tavern-gm-en.pdf"
gmGuidePdf German = "/pdfs/bamberg-tavern-gm-de.pdf"

scenesPdf :: Lang -> Text
scenesPdf English = "/pdfs/bamberg-tavern-scenes.pdf"
scenesPdf German = "/pdfs/bamberg-tavern-scenes-de.pdf"
