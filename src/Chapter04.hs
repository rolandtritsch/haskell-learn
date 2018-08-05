-- Chapter04.hs
module Chapter04 where

qsort' :: (Ord a) => [a] -> [a]
qsort' [] = []
qsort' (pivot:rest) = qsort' left ++ [pivot] ++ qsort' right where
  left = [e | e <- rest, e <= pivot]
  right = [e | e <- rest, e > pivot]
