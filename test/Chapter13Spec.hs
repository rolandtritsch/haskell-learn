-- Chapter13Spec.hs
module Chapter13Spec where

import Test.Hspec

import Chapter13

run :: IO ()
run = hspec $ do
  describe "Chapter13" $ do
    it "should return the right result(s)" $ do
      (+) <$> Just 1 <*> Just 2 `shouldBe` Just 3
      ((0, 0) -: landRight 2 >>= landLeft 5) `shouldBe` Just (5, 2)
      ((0, 0) -: landRight 2 >>= landLeft 6) `shouldBe` Nothing
      (return (0, 0) >>= landRight 2 >>= landLeft 6 >>= landRight 2) `shouldBe` Nothing
      (return (0, 0) >>= landRight 2 >>= landLeft 5 >>= landRight 6) `shouldBe` Just (5, 8)
      (return (0, 0) >>= landRight 2 >>= landLeft 5 >>= landRight 7) `shouldBe` Nothing
      bangIt `shouldBe` Just "3!"
      bangIt' `shouldBe` Just "3!"
      bangIt'' `shouldBe` Nothing
