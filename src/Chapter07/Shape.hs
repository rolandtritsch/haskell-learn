-- Shape.hs
module Chapter07.Shape where

data Point = Point Float Float deriving (Show, Eq)

data Shape =
  -- | center, radius
  Circle Point Float |
  -- | leftCorner, rightCorner
  Rectangle Point Point
  deriving (Show, Eq)

area :: Shape -> Float
area (Circle _ radius) = pi * radius ^ 2
area (Rectangle (Point x1 y1) (Point x2 y2)) = (abs (x2 - x1)) * (abs (y2 - y1))

data Offset = Offset Float Float deriving (Show)

nudge :: Shape -> Offset -> Shape
nudge (Circle (Point x y) radius) (Offset diffX diffY) = Circle (Point newX newY) radius
  where
    newX = x + diffX
    newY = y + diffY
nudge (Rectangle (Point x1 y1) (Point x2 y2)) (Offset diffX diffY) = Rectangle (Point newX1 newY1) (Point newX2 newY2)
  where
    newX1 = x1 + diffX
    newY1 = y1 + diffY
    newX2 = x2 + diffX
    newY2 = y2 + diffY

baseCircle :: Float -> Shape
baseCircle radius = Circle (Point 0 0) radius

baseRectangle :: Float -> Float -> Shape
baseRectangle width height = Rectangle (Point 0 0) (Point width height)
