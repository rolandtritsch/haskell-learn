-- Chapter11Spec.hs
module Chapter11Spec where

import Test.Hspec

import Chapter11

run :: IO ()
run = hspec $ do
  describe "Chapter11" $ do
    it "should return the right result(s)" $ do
      transform ["roland"] `shouldBe` ["ROLAND", "dnalor", "!roland"]
