-- Chapter03Spec.hs
module Chapter03Spec where

import Test.Hspec

import Chapter03

run :: IO ()
run = hspec $ do
  describe "Chapter03" $ do
    it "should return the right result(s)" $ do
      Chapter03.factorial 3 `shouldBe` 6
      Chapter03.head' "Hello" `shouldBe` 'H'
      Chapter03.head' [1, 2] `shouldBe` 1
      Chapter03.bmiTell 10 `shouldBe` "S"
      Chapter03.bmiTell 100 `shouldBe` "XL"
      Chapter03.initials "Roland" "Tritsch" `shouldBe` Chapter03.initials' "Roland" "Tritsch"
      Chapter03.initials "Roland" "Tritsch" `shouldBe` Chapter03.initials'' "Roland" "Tritsch"
      Chapter03.head' "Hello" `shouldBe` Chapter03.head'' "Hello"
      Chapter03.head' [1, 2] `shouldBe` Chapter03.head'' [1, 2]
