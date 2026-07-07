{-# LANGUAGE OverloadedStrings #-}

module Tavern.Booking (
  Adventure (..),
  adventureChoices,
  adventureFromText,
  adventureLabelDe,
  adventureLabelEn,
  BookingState (..),
  Slot (..),
  SlotView (..),
  addSlot,
  bookSlot,
  emptyBookingState,
  toSlotViews,
) where

import Data.Aeson (FromJSON, ToJSON)
import Data.List (sortOn)
import Data.Map.Strict (Map)
import Data.Map.Strict qualified as Map
import Data.Text (Text)
import Data.Text qualified as Text
import GHC.Generics (Generic)

data Adventure
  = QueenKunigunde
  | BurningOfWitches
  | Gardeners
  deriving (Eq, Ord, Show, Read, Enum, Bounded, Generic)

instance ToJSON Adventure
instance FromJSON Adventure

adventureChoices :: [(Text, Adventure)]
adventureChoices =
  [ ("queen-kunigunde", QueenKunigunde)
  , ("burning-of-witches", BurningOfWitches)
  , ("gardeners", Gardeners)
  ]

adventureFromText :: Text -> Maybe Adventure
adventureFromText input = lookup (Text.toLower input) adventureChoices

adventureLabelEn :: Adventure -> Text
adventureLabelEn QueenKunigunde = "Queen Kunigunde"
adventureLabelEn BurningOfWitches = "Burning of Witches"
adventureLabelEn Gardeners = "Gardeners"

adventureLabelDe :: Adventure -> Text
adventureLabelDe QueenKunigunde = "Königin Kunigunde"
adventureLabelDe BurningOfWitches = "Hexenverbrennung"
adventureLabelDe Gardeners = "Gärtner"

data Slot = Slot
  { slotId :: Int
  , slotAdventure :: Adventure
  , slotWhen :: Text
  }
  deriving (Eq, Show, Generic)

instance ToJSON Slot
instance FromJSON Slot

data SlotView = SlotView
  { viewSlot :: Slot
  , viewBookings :: [Text]
  }
  deriving (Eq, Show, Generic)

instance ToJSON SlotView
instance FromJSON SlotView

data BookingState = BookingState
  { nextSlotId :: Int
  , slots :: Map Int Slot
  , bookings :: Map Int [Text]
  }
  deriving (Eq, Show)

emptyBookingState :: BookingState
emptyBookingState = BookingState 1 Map.empty Map.empty

addSlot :: Adventure -> Text -> BookingState -> (Slot, BookingState)
addSlot adventure when bookingState =
  let sid = nextSlotId bookingState
      newSlot = Slot sid adventure when
      newState =
        bookingState
          { nextSlotId = sid + 1
          , slots = Map.insert sid newSlot (slots bookingState)
          }
   in (newSlot, newState)

bookSlot :: Int -> Text -> BookingState -> Either Text BookingState
bookSlot sid guestName bookingState
  | Text.null (Text.strip guestName) = Left "Guest name is required."
  | Map.notMember sid (slots bookingState) = Left "Slot not found."
  | otherwise =
      Right
        bookingState
          { bookings = Map.insertWith (<>) sid [Text.strip guestName] (bookings bookingState)
          }

toSlotViews :: BookingState -> [SlotView]
toSlotViews bookingState =
  map toView sortedSlots
  where
    sortedSlots = sortOn slotId (Map.elems (slots bookingState))
    toView slot = SlotView slot (Map.findWithDefault [] (slotId slot) (bookings bookingState))
