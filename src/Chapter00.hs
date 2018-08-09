-- Chapter00.hs
module Chapter00 where

hello :: String
hello = "Hello World"

data Point = Point { -- define new data type Point (structure of data)
  x :: Int,
  y :: Int
} deriving (Eq) -- Point is an instance of type class Eq

class (Eq a) => YesNo a where -- define new type class YesNo (behavior of data)
  yesno :: a -> Bool

instance YesNo Point where -- Point is an instance of type class YesNo (link behavior to data)
  yesno (Point 0 0) = False
  yesno (Point _ _) = True

testIt :: Point -> Bool
testIt p = yesno p

compareIt :: Point -> Point -> Bool
compareIt p p' = p == p'

type Text = String -- Text is a type alias/synonym for String

newtype Pair b a = Pair { getPair :: (a, b) }
