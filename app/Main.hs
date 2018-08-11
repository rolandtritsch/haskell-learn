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
import qualified Chapter07 as C07
import qualified Chapter07.Shape as C07S
import qualified Chapter07.Person as C07P
import qualified Chapter07.List as C07L
import qualified Chapter07.Tree as C07T
import qualified Chapter10 as C10
import qualified Chapter10.RPNCalc as C10R
import qualified Chapter11 as C11
import qualified Chapter12 as C12
import qualified Chapter13 as C13
import qualified Chapter14 as C14

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
  printf "Chapter07.Circle.area -> %f\n" (C07S.area (C07S.Circle (C07S.Point 10 20) 10))
  printf "Chapter07.Rectangle.area -> %f\n" (C07S.area (C07S.Rectangle (C07S.Point 0 0) (C07S.Point 10 10)))
  printf "Chapter07.Circle.nudge -> %s\n" (show $ C07S.nudge (C07S.Circle (C07S.Point 10 20) 10) (C07S.Offset 10 10))
  printf "Chapter07.Rectangle.nudge -> %s\n" (show $ C07S.nudge (C07S.Rectangle (C07S.Point 0 0) (C07S.Point 10 10)) (C07S.Offset 10 10))
  printf "Chapter07.newRoland -> %s\n" (show C07P.newRoland)
  printf "Chapter07.List.cons -> %s\n" (show  ((1 C07L.:-: C07L.Empty) C07L.^++ (2 C07L.:-: C07L.Empty)))
  printf "Chapter07.Tree.show -> %s\n" (C07T.showTree (C07T.insertValue 1 C07T.EmptyTree))
  printf "Chapter07.Tree.show -> %s\n" (C07T.showTree C07T.sampleTree)
  printf "Chapter07.Tree.show -> %s\n" (show C07T.sampleTree)
  printf "Chapter07.Tree.show -> %s\n" (show (fmap (*2) C07T.sampleTree))
  printf "Chapter10.RPNCalc.run -> %f\n" (C10R.run (C10R.parse (words "10 4 3 + 2 * -")) [])
  printf "Chapter11.transform -> %s\n" (show (C11.transform ["roland"]))
  printf "Chapter13.land -> %s\n" (show (return (0, 0) >>= C13.landRight 2 >>= C13.landLeft 5 >>= C13.landRight 6))
  printf "Chapter14.canReachIn3 -> %s\n" (show (C14.canReachIn 3 (6, 2) (6, 1)))
