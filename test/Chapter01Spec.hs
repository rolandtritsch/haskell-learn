-- Chapter01Spec.hs
module Chapter01Spec where

import Test.Hspec

import Chapter01

run :: IO ()
run = hspec $ do
  describe "Chapter01" $ do
    it "should return the right result(s)" $ do
      doubleMe 5 `shouldBe` 10
      doubleUs 5 2 `shouldBe` 14
      doubleSmallNumber 90 `shouldBe` 180
      doubleSmallNumber 100 `shouldBe` 100
      doubleSmallNumber' 90 `shouldBe` 181
      doubleSmallNumber' 100 `shouldBe` 101
      first5Numbers ++ next5Numbers `shouldBe` [0..9]
      first5Numbers ++ [5] `shouldBe` [0..5]
      4 : next5Numbers `shouldBe` [4..9]
      first5Numbers !! 0 `shouldBe` 0
      head first5Numbers `shouldBe` 0
      tail first5Numbers `shouldBe` [1..4]
      init first5Numbers `shouldBe` [0..3]
      last first5Numbers `shouldBe` 4
      length first5Numbers `shouldBe` 5
      null first5Numbers `shouldBe` False
      reverse first5Numbers `shouldBe` [4, 3..0]
      take 1 first5Numbers `shouldBe` [head first5Numbers]
      drop 1 first5Numbers `shouldBe` tail first5Numbers
      minimum first5Numbers `shouldBe` head first5Numbers
      maximum first5Numbers `shouldBe` last first5Numbers
      elem (head first5Numbers) first5Numbers `shouldBe` True
      elem (succ (last first5Numbers)) first5Numbers `shouldBe` False
      findRightTriangle 10 24 `shouldBe` [(8, 6, 10)]
