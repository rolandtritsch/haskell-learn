-- Chapter05.hs
module Chapter05 where

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

largestDivisible :: Integer -> Integer -> Integer
largestDivisible upperBoundary divBy = head (filter (isDivisible divBy) [upperBoundary, upperBoundary-1..]) where
  isDivisible divBy n = n `mod` divBy == 0

chain :: Int -> [Int]
chain 1 = [1]
chain n
  | mod n 2 == 0 = n:chain  (n `div` 2)
  | otherwise = n:chain ((n * 3) + 1)

findChains :: ([Int] -> Bool) -> Int -> Int
findChains predicate range = length (filter predicate chains)
  where
    chains = [chain n | n <- [1..range]]

areLongerThan :: Int -> [Int] -> Bool
areLongerThan size xs = length xs > size
