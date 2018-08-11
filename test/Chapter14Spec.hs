-- Chapter14Spec.hs
module Chapter14Spec where

import Test.Hspec

import Chapter14

run :: IO ()
run = hspec $ do
  describe "Chapter14" $ do
    it "should return the right result(s)" $ do
      moveKnight (8, 1) `shouldBe` [(6, 2), (7, 3)]
      canReachIn3 (6, 2) (6, 1) `shouldBe` True
      canReachIn3 (6, 2) (7, 3) `shouldBe` False
      canReachIn 3 (6, 2) (6, 1) `shouldBe` True
      canReachIn 3 (6, 2) (7, 3) `shouldBe` False
