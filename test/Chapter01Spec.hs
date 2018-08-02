-- Chapter01Spec.hs
module Chapter01Spec where

import Test.Hspec

import Chapter01

run :: IO ()
run = hspec $ do
  describe "Chapter01" $ do
    it "should return the right result(s)" $ do
      Chapter01.doubleMe 5 `shouldBe` 10
      Chapter01.doubleUs 5 2 `shouldBe` 14
      Chapter01.doubleSmallNumber 90 `shouldBe` 180
      Chapter01.doubleSmallNumber 100 `shouldBe` 100
      Chapter01.doubleSmallNumber' 90 `shouldBe` 181
      Chapter01.doubleSmallNumber' 100 `shouldBe` 101
      Chapter01.first5Numbers ++ Chapter01.next5Numbers `shouldBe` [0..9]
      Chapter01.first5Numbers ++ [5] `shouldBe` [0..5]
      4 : Chapter01.next5Numbers `shouldBe` [4..9]
      Chapter01.first5Numbers !! 0 `shouldBe` 0
      head Chapter01.first5Numbers `shouldBe` 0
      tail Chapter01.first5Numbers `shouldBe` [1..4]
      init Chapter01.first5Numbers `shouldBe` [0..3]
      last Chapter01.first5Numbers `shouldBe` 4
      length Chapter01.first5Numbers `shouldBe` 5
      null Chapter01.first5Numbers `shouldBe` False
      reverse Chapter01.first5Numbers `shouldBe` [4, 3..0]
      take 1 Chapter01.first5Numbers `shouldBe` [head Chapter01.first5Numbers]
      drop 1 Chapter01.first5Numbers `shouldBe` tail Chapter01.first5Numbers
      minimum Chapter01.first5Numbers `shouldBe` head Chapter01.first5Numbers
      maximum Chapter01.first5Numbers `shouldBe` last Chapter01.first5Numbers
      elem (head Chapter01.first5Numbers) Chapter01.first5Numbers `shouldBe` True
      elem (succ (last Chapter01.first5Numbers)) Chapter01.first5Numbers `shouldBe` False
      Chapter01.findRightTriangle 10 24 `shouldBe` [(8, 6, 10)]
