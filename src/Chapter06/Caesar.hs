-- Caesar.hs
module Chapter06.Caesar where

import Data.List (elemIndex)
import Data.Maybe (fromJust)

alphabet :: [Char]
alphabet = ['a'..'z'] ++ ['A'..'Z'] ++ ['0'..'9'] ++ "!@#$%^&*()_+-=[]{}|;':<>?,./~`\\\" "

encode :: String -> [Char] -> Int -> String
encode "" _ _ = ""
encode (c:rest) alphabet key = a !! (i + k) : encode rest alphabet key
  where
    a = alphabet ++ alphabet
    i = fromJust $ elemIndex c alphabet
    k = key `mod` length alphabet

decode :: String -> [Char] -> Int -> String
decode "" _ _ = ""
decode (c:rest) alphabet key = a !! (i + l - k) : decode rest alphabet key
  where
    a = alphabet ++ alphabet
    i = fromJust $ elemIndex c alphabet
    k = key `mod` length alphabet
    l = length alphabet
