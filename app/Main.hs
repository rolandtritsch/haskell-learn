module Main where

import Text.Printf

import Chapter00
import Chapter01

main :: IO ()
main = do
  printf "Chapter00.hello -> %s\n" Chapter00.hello
  printf "Chapter01.doubleMe -> %d\n" (Chapter01.doubleMe 5)
