-- Chapter03Spec.hs
module Chapter03Spec where

import Test.Hspec

import Chapter03

run :: IO ()
run = hspec $ do
  describe "Chapter03" $ do
    it "should return the right result(s)" $ do
      factorial 3 `shouldBe` 6
      head' "Hello" `shouldBe` 'H'
      head' [1, 2] `shouldBe` 1
      bmiTell 10 `shouldBe` "S"
      bmiTell 100 `shouldBe` "XL"
      initials "Roland" "Tritsch" `shouldBe` initials' "Roland" "Tritsch"
      initials "Roland" "Tritsch" `shouldBe` initials'' "Roland" "Tritsch"
      head' "Hello" `shouldBe` head'' "Hello"
      head' [1, 2] `shouldBe` head'' [1, 2]
