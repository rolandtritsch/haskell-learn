-- Chapter11.hs
module Chapter11 where

import Data.Char (toUpper)

hello :: String
hello = "roland"

upIt :: String -> String
upIt = map toUpper

revIt :: String -> String
revIt = reverse

bangIt :: String -> String
bangIt = (++) "!"

transform :: [String] -> [String]
transform it = [upIt, revIt, bangIt] <*> it
