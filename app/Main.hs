module Main where

import Text.Printf

import qualified Chapter00 as C00
import qualified Chapter01 as C01
import qualified Chapter02 as C02
import qualified Chapter03 as C03
import qualified Chapter04 as C04
import qualified Chapter05 as C05
import qualified Chapter06 as C06
import qualified Chapter06.Caesar as C06C

main :: IO ()
main = do
  printf "Chapter00.hello -> %s\n" C00.hello
  printf "Chapter01.doubleMe -> %d\n" (C01.doubleMe 5)
  putStr "Chapter01.findRightTriangle -> "
  putStrLn (show (C01.findRightTriangle 10 24))
  printf "Chapter02.factorial -> %d\n" (C02.factorial 50)
  printf "Chapter03.factorial -> %d\n" (C03.factorial 50)
  printf "Chapter03.head' -> %c\n" (C03.head' "Hello")
  printf "Chapter03.firstLetter -> %s\n" (C03.firstLetter "Dracula")
  printf "Chapter03.initials -> %s\n" (C03.initials "Roland" "Tritsch")
  printf "Chapter03.initials' -> %s\n" (C03.initials' "Roland" "Tritsch")
  printf "Chapter03.initials'' -> %s\n" (C03.initials'' "Roland" "Tritsch")
  printf "Chapter03.cylinder -> %f\n" (C03.cylinder 2 3)
  printf "Chapter04.qsort' -> %s\n" (show (C04.qsort' [5, 8, 3, 1, 4, 9, 2, 7, 6]))
  printf "Chapter05.zipWith' -> %s\n" (show (C05.zipWith' (+) [1, 2] [1, 2, 3]))
  printf "Chapter05.largestDivisible -> %d\n" (C05.largestDivisible 100000 3829)
  printf "Chapter05.findChains -> %d\n" (C05.findChains (C05.areLongerThan 15) 100)
  printf "Chapter06.distinctLength -> %d\n" (C06.distinctLength [1, 2, 1])
  printf "Chapter06.Caesar.encode -> %s\n" (C06C.encode "roland" C06C.alphabet 10191)
