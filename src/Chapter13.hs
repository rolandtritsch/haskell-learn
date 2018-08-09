-- Chapter13.hs
module Chapter13 where

hello :: String
hello = "roland"

type Birds = Int
type Pole = (Birds, Birds)

maxBirdDifference :: Int
maxBirdDifference = 4

x -: f = f x

landLeft :: Birds -> Pole -> Maybe Pole
landLeft b (l, r)
  | abs (b + l - r) < maxBirdDifference = Just (b + l, r)
  | otherwise = Nothing

landRight :: Birds -> Pole -> Maybe Pole
landRight b (l, r)
  | abs (b + r - l) < maxBirdDifference = Just (l, b + r)
  | otherwise = Nothing

bangIt :: Maybe String
bangIt =
  Just 3 >>= (\x ->
  Just "!" >>= (\y ->
  Just (show x ++ y)
  ))

bangIt' :: Maybe String
bangIt' = do
  x <- Just 3
  y <- Just "!"
  Just (show x ++ y)

bangIt'' :: Maybe String
bangIt'' = do
  x <- Just 3
  _ <- Nothing
  y <- Just "!"
  Just (show x ++ y)
