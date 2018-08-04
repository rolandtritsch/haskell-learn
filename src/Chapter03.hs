-- Chapter03.hs
module Chapter03 where

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

head' :: [a] -> a
head' [] = error "head': List cannot be empty"
head' (x:_) = x

firstLetter :: String -> String
firstLetter "" = "The first letter of no word is ..."
firstLetter word@(letter:_) = "The first letter of the word " ++ word ++ " is " ++ [letter]

bmiTell :: Double -> String
bmiTell bmi
  | bmi <= 10 = "S"
  | bmi <= 20 = "M"
  | bmi <= 30 = "L"
  | otherwise = "XL"

initials :: String -> String -> String
initials (f:_) (l:_) = [f] ++ "." ++ [l] ++ "."

initials' :: String -> String -> String
initials' firstName lastName = [f] ++ "." ++ [l] ++ "."
  where
    (f:_) = firstName
    (l:_) = lastName

initials'' :: String -> String -> String
initials'' firstName lastName = [f] ++ "." ++ [l] ++ "."
  where
    f = head firstName
    l = head lastName

cylinder :: Double -> Double -> Double
cylinder radius height =
  let
    sideArea = 2 * pi * radius * height
    topArea = pi * radius ^ 2
  in
    sideArea + 2 * topArea

head'' :: [a] -> a
head'' xs = case xs of
  [] -> error "head'': List cannot be empty"
  (x:_) -> x
