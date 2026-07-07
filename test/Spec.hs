{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import Tavern.Booking
import Test.Hspec

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "addSlot" $ do
    it "creates slots with increasing ids" $ do
      let (_, st1) = addSlot QueenKunigunde "2026-08-15 18:00" emptyBookingState
      let (slot2, _) = addSlot Gardeners "2026-08-16 18:00" st1
      slotId slot2 `shouldBe` 2

  describe "bookSlot" $ do
    it "books an existing slot" $ do
      let (slot1, st1) = addSlot QueenKunigunde "2026-08-15 18:00" emptyBookingState
      case bookSlot (slotId slot1) "Alice" st1 of
        Left err -> expectationFailure (show err)
        Right st2 ->
          fmap viewBookings (toSlotViews st2) `shouldBe` [["Alice"]]

    it "rejects unknown slots" $ do
      bookSlot 42 "Alice" emptyBookingState `shouldBe` Left "Slot not found."
