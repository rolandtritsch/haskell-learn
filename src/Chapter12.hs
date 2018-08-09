-- Chapter12.hs
module Chapter12 where

hello :: String
hello = "roland"

newtype Pair b a = Pair { getPair :: (a, b) } deriving (Show, Eq)

{--
data Pair a b = Pair {
  fst :: a,
  snd :: b
} deriving (Show, Eq)
--}

instance Functor (Pair c) where
  fmap f (Pair (x, y)) = Pair (f x, y)

{--
instance Monoid (Pair c) where
  mempty = Pair (0, 0)
  mappend (Pair (x, y)) (Pair (x', y')) = Pair (x + x', y + y')
--}
