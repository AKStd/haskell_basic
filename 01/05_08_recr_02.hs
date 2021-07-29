{-
 защита от бесконечного цикла

factorial 0 = 1
factorial n = if n < 0 then error "arg must be >= 0" else n * factorial (n - 1)

охранные выражения:

factorial n | n == 0 = 1
            | n > 0  = n * factorial (n - 1)
            | otherwise = error "arg must be >= 0"



-}

module FIb where

    -- fibonacci :: Int -> Int
    -- fibonacci 0 = 0
    -- fibonacci 1 = 1
    -- fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

    fibonacci :: Int -> Int
    fibonacci n | n == (-1) = 1
                | n > 1  = fibonacci (n - 1) + fibonacci (n - 2)
                | n < (-1)  = ((-1) ^ (abs n + 1)) * fibonacci (abs n)
                | otherwise = n

{-
or 

fibonacci n | n > 1     = fibonacci (n - 1) + fibonacci (n - 2)
            | n < 0     = fibonacci (n + 2) - fibonacci (n + 1)
            | otherwise = n


-}