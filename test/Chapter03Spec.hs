-- Chapter03Spec.hs
module Chapter03Spec where

import Test.Hspec

import Chapter03

run :: IO ()
run = hspec $ do
  describe "Chapter03" $ do
    it "should return the right result(s)" $ do
      Chapter03.hello `shouldBe` "roland"
