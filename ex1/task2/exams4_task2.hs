module Main where

import Data.Foldable
import Data.Monoid

data BinaryTree a = Null
                  | Node a (BinaryTree a) (BinaryTree a)
    deriving (Show)

instance Foldable BinaryTree where
    foldMap toMonoid = flip helper mempty
        where helper Null = id
              helper (Node x l r) = helper l . mappend (toMonoid x) . helper r

binaryTreeNegativeFilter :: (Integral  a) => BinaryTree a -> [a]
binaryTreeNegativeFilter = filter (< 0) . toList
