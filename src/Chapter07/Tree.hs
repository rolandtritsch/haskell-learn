-- Tree.hs
module Chapter07.Tree where

data Tree a =
  EmptyTree |
  Node a (Tree a) (Tree a)

newLeaf :: a -> Tree a
newLeaf value = Node value EmptyTree EmptyTree

insertValue :: (Ord a) => a -> Tree a -> Tree a
insertValue value EmptyTree = newLeaf value
insertValue value node@(Node v left right)
  | value == v = node
  | value < v = Node v (insertValue value left) right
  | value > v = Node v left (insertValue value right)

showTree :: (Show a) => Tree a -> String
showTree (Node a EmptyTree EmptyTree) = show a
showTree (Node a left right) = "[" ++ showTree left ++ "] (" ++ show a ++ ") [" ++ showTree right ++ "]"

instance (Show a) => Show (Tree a) where
  show (Node a EmptyTree EmptyTree) = show a
  show (Node a left right) = "[" ++ showTree left ++ "] (" ++ show a ++ ") [" ++ showTree right ++ "]"

isInTree :: (Ord a) => a -> Tree a -> Bool
isInTree value EmptyTree = False
isInTree value (Node v left right)
  | value == v = True
  | value < v = isInTree value left
  | value > v = isInTree value right

sampleTree = foldr insertValue EmptyTree [8,6,4,1,7,3,5]

instance Functor Tree where
  fmap _ EmptyTree = EmptyTree
  fmap f (Node v left right) = Node (f v) (fmap f left) (fmap f right)
