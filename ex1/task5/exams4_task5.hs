module Main where

data Printed = Journal { title :: String
                       , year :: Int
                       , no :: Int
                       , price :: Double
                       }
             | Book { title :: String
                    , author :: String
                    , price :: Double
                    }
    deriving (Show)

totalPrice :: [Printed] -> Double
totalPrice = foldr ((+) . price) 0.0
