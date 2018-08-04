module Main where

import Text.Printf

import Chapter00
import Chapter01
import Chapter02
import Chapter03

main :: IO ()
main = do
  printf "Chapter00.hello -> %s\n" Chapter00.hello
  printf "Chapter01.doubleMe -> %d\n" (Chapter01.doubleMe 5)
  putStr "Chapter01.findRightTriangle -> "
  putStrLn (show (Chapter01.findRightTriangle 10 24))
  printf "Chapter02.factorial -> %d\n" (Chapter02.factorial 50)
  printf "Chapter03.factorial -> %d\n" (Chapter03.factorial 50)
  printf "Chapter03.head' -> %c\n" (Chapter03.head' "Hello")
  printf "Chapter03.firstLetter -> %s\n" (Chapter03.firstLetter "Dracula")
  printf "Chapter03.initials -> %s\n" (Chapter03.initials "Roland" "Tritsch")
  printf "Chapter03.initials' -> %s\n" (Chapter03.initials' "Roland" "Tritsch")
  printf "Chapter03.initials'' -> %s\n" (Chapter03.initials'' "Roland" "Tritsch")
  printf "Chapter03.cylinder -> %f\n" (Chapter03.cylinder 2 3)
