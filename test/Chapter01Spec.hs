-- Chapter01Spec.hs
module Chapter01Spec where

import Test.Hspec

import Chapter01

run :: IO ()
run = hspec $ do
  describe "Chapter01" $ do
    it "should return the right result(s)" $ do
      Chapter01.doubleMe 5 `shouldBe` 25
