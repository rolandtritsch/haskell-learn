-- Chapter05Spec.hs
module Chapter05Spec where

import Test.Hspec

import Chapter05

run :: IO ()
run = hspec $ do
  describe "Chapter05" $ do
    it "should return the right result(s)" $ do
      zipWith' (+) [1, 2] [1, 2, 3] `shouldBe` [2, 4]
      largestDivisible 100000 3829 `shouldBe` 99554
      chain 10 `shouldBe` [10, 5, 16, 8, 4, 2, 1]
      findChains (areLongerThan 15) 100 `shouldBe` 66
