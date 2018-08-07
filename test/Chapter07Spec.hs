-- Chapter07Spec.hs
module Chapter07Spec where

import Test.Hspec

import Chapter07
import qualified Chapter07.Shape as S
import qualified Chapter07.Person as P
import qualified Chapter07.List as L
import qualified Chapter07.Tree as T
import qualified Chapter07.YesNo as Y

run :: IO ()
run = hspec $ do
  describe "Chapter07.Shape" $ do
    it "should return the right result(s)" $ do
      S.area (S.Circle (S.Point 10 20) 10) `shouldBe` 314.15927
      S.area (S.Rectangle (S.Point 0 0) (S.Point 10 10)) `shouldBe` 100
      S.nudge (S.Circle (S.Point 0 0) 10) (S.Offset 5 10) `shouldBe` (S.Circle (S.Point 5 10) 10)
      S.nudge (S.Rectangle (S.Point 0 0) (S.Point 10 10)) (S.Offset 5 10) `shouldBe` (S.Rectangle (S.Point 5 10) (S.Point 15 20))

  describe "Chapter07.Person" $ do
    it "should return the right result(s)" $ do
      show P.newRoland `shouldNotBe` ""

  describe "Chapter07.List" $ do
    it "should return the right result(s)" $ do
      (1 L.:-: L.Empty) L.^++ (2 L.:-: L.Empty) `shouldBe` 1 L.:-: (2 L.:-: L.Empty)

  describe "Chapter07.Tree" $ do
    it "should return the right result(s)" $ do
      T.showTree (T.insertValue 1 T.EmptyTree) `shouldBe` "1"
      T.isInTree 1 (T.insertValue 1 T.EmptyTree) `shouldBe` True

  describe "Chapter07.YesNo" $ do
    it "should return the right result(s)" $ do
      Y.yesno [] `shouldBe` False
      Y.yesno "1" `shouldBe` True
      Y.yesno (Just 0) `shouldBe` True
      Y.yesno (0 :: Int) `shouldBe` False
