-- Chapter00Spec.hs
module Chapter00Spec where

import Test.Hspec

import Chapter00

run :: IO ()
run = hspec $ do
  describe "Chapter00" $ do
    it "should return the right result(s)" $ do
      Chapter00.hello `shouldBe` "Hello World"
