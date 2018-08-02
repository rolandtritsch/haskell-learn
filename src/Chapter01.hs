-- Chapter01.hs
module Chapter01 where

doubleMe :: Int -> Int
doubleMe x = x + x

doubleUs :: Int -> Int -> Int
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber :: Int -> Int
doubleSmallNumber x = if x < 100 then doubleMe x else x

doubleSmallNumber' :: Int -> Int
doubleSmallNumber' x = doubleSmallNumber x + 1

first5Numbers = [0, 1, 2, 3, 4]
next5Numbers = [x | x <- [5..9]]

findRightTriangle maxLength perimeter = do
  let sideLength = [1..maxLength]
  let triples = [(a, b, c) | c <- sideLength, a <- [1..c], b <- [1..a], a^2 + b^2 == c^2, a + b + c == perimeter]
  triples
