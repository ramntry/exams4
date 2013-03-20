module Main where

import Data.List

pos :: (Eq a) => a -> [a] -> Maybe Int
pos x = findIndex (== x)
