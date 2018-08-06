-- Chapter02Spec.hs
module Chapter02Spec where

import Test.Hspec

import Chapter02

run :: IO ()
run = hspec $ do
  describe "Chapter02" $ do
    it "should return the right result(s)" $ do
      factorial 3 `shouldBe` 6
