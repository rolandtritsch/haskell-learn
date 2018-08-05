-- Chapter05Spec.hs
module Chapter05Spec where

import Test.Hspec

import Chapter05

run :: IO ()
run = hspec $ do
  describe "Chapter05" $ do
    it "should return the right result(s)" $ do
      Chapter05.zipWith' (+) [1, 2] [1, 2, 3] `shouldBe` [2, 4]
      Chapter05.largestDivisible 100000 3829 `shouldBe` 99554
      Chapter05.chain 10 `shouldBe` [10, 5, 16, 8, 4, 2, 1]
      Chapter05.findChains (areLongerThan 15) 100 `shouldBe` 66
