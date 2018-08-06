-- Chapter06.hs
module Chapter06 where

import Data.List (nub)
import Data.Char (digitToInt)

distinctLength :: (Eq a) => [a] -> Int
distinctLength = length . nub

findNum :: Int -> Int
findNum n = head (filter (isN n) [1..])
  where
    isN n i = sum (map digitToInt (show i)) == n
