-- Chapter10Spec.hs
module Chapter10Spec where

import Test.Hspec

import Chapter10
import qualified Chapter10.RPNCalc as R

run :: IO ()
run = hspec $ do
  describe "Chapter10.RPNcalc" $ do
    it "should return the right result(s)" $ do
      R.run (R.parse (words "10 4 3 + 2 * -")) [] `shouldBe` 4.0
      R.run (R.parse (words "2 3.5 +")) [] `shouldBe` 5.5
      R.run (R.parse (words "90 34 12 33 55 66 + * - +")) [] `shouldBe` 4015.0
      R.run (R.parse (words "90 34 12 33 55 66 + * - + -")) [] `shouldBe` 3925.0
      R.run (R.parse (words "90 3.8 -")) [] `shouldBe` -86.2
      R.run (R.parse (words "10 2 ^")) [] `shouldBe` 1024.0
      R.run (R.parse (words "2.7 ln")) [] `shouldBe` 0.9932517730102834
      R.run (R.parse (words "10 10 10 10 10 sum 4 flip /")) [] `shouldBe` 12.5
      R.run (R.parse (words "10 4 3 + 2 * flip -")) [] `shouldBe` -4.0
