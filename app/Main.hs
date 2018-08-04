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
  printf "Chapter03.hello -> %s\n" Chapter03.hello
