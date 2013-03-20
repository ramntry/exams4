module Main where

isPrime :: (Integral a) => [a] -> a -> Bool
isPrime deviders n = foldr step True deviders
    where step d acc | fromIntegral d > sqrt (fromIntegral n) = True
                     | not acc = acc
                     | otherwise = n `mod` d /= 0

primes :: (Integral a) => [a]
primes = filter (isPrime [2..]) [2..]

main =  putStr $ unlines $ map show $ take 5000 primes
