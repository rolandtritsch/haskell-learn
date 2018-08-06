-- Chapter06Spec.hs
module Chapter06Spec where

import Test.Hspec

import Chapter06
import qualified Chapter06.Caesar as C

run :: IO ()
run = hspec $ do
  describe "Chapter06" $ do
    it "should return the right result(s)" $ do
      distinctLength [1, 2, 1] `shouldBe` 2
      findNum 40 `shouldBe` 49999

  describe "Chapter06.Caesar" $ do
    it "should return the right result(s)" $ do
      C.encode "abc" C.alphabet 1 `shouldBe` "bcd"
      C.encode "roland 123 &^%" C.alphabet (length C.alphabet * 10) `shouldBe` "roland 123 &^%"
      C.decode (C.encode "abc" C.alphabet 1024) C.alphabet 1024 `shouldBe` "abc"
