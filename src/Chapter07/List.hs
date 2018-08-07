-- List.hs
module Chapter07.List where

infixr 5 :-:
data List' a =
  Empty |
  a :-: (List' a)
  deriving (
    Eq,
    Ord,
    Show,
    Read
  )

infixr 5 ^++
(^++) :: List' a -> List' a -> List' a
Empty ^++ thaz = thaz
thiz@(x :-: xs) ^++ thaz = x :-: (xs ^++ thaz)
