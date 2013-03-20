module Main where

-- Compile with -O2, please

isPrime :: (Integral a) => [a] -> a -> Bool
isPrime deviders n = foldr step True deviders
    where step d acc | fromIntegral d > (sqrt . fromIntegral) n = True
                     | otherwise = (n `mod` d /= 0) && acc

primes :: (Integral a) => [a]
primes = 2 : filter (isPrime primes) [3..]

main = putStrLn ("100'000th prime number is "
        ++ (show . last . take 100000) primes
        ++ "\n(http://www.wolframalpha.com/input/?i=prime+100000)")
