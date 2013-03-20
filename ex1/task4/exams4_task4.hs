module Main where

func :: [Double] -> Double
func ds = totalSum / cosProduct
    where (totalSum, cosProduct) = helper ds (0, 1)
          helper [] acc = acc
          helper (d:ds) (sAcc, pAcc) = helper ds (sAcc + d, pAcc * (cos d))
