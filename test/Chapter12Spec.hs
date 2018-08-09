-- Chapter12Spec.hs
module Chapter12Spec where

import Test.Hspec

import Chapter12

run :: IO ()
run = hspec $ do
  describe "Chapter12" $ do
    it "should return the right result(s)" $ do
      fmap (*2) (Pair (1, 1)) `shouldBe` (Pair (2, 1))
      (map $ fmap (*2)) [Pair (1, 1), Pair (2, 2)] `shouldBe` [Pair (2, 1), Pair (4, 2)]
