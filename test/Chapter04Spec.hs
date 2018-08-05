-- Chapter04Spec.hs
module Chapter04Spec where

import Test.Hspec

import Chapter04

run :: IO ()
run = hspec $ do
  describe "Chapter04" $ do
    it "should return the right result(s)" $ do
      Chapter04.qsort' [5, 8, 3, 1, 4, 9, 2, 7, 6] `shouldBe` [1..9]
