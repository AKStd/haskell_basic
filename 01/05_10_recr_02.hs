{-

   

-}


module Factr where


    factorial5 n | n >= 0 = helper 1 n
                 | otherwise = error "Error Error"
    
    helper acc 0 = acc
    helper acc n = helper (acc * n) (n-1)

    factorial 0 = 1
    factorial n = n * factorial (n - 1)




    fibonacci :: Integer -> Integer
    fibonacci n | n == 0 = 0
            | n == 1 = 1
            | n > 1  = fibonacci (n - 1) + fibonacci (n - 2)
            | n == (-1) = 1
            | n < (-1)  = ((-1) ^ (abs n + 1)) * fibonacci (abs n)
            | otherwise = error "error"

    fibonacci5 :: Integer -> Integer
    fibonacci5 n = helper5 0 1 n

    helper5 :: Integer -> Integer -> Integer -> Integer
    helper5 acc1 acc2 n  | n == 0 = acc1
                        | n > 0 = helper5 (acc1 + acc2) acc1 (n - 1)
                        | n < 0 = helper5 acc2 (acc1 - acc2) (n + 1)
                        | otherwise = error "error"

