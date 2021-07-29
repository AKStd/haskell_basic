{-

factorial n = if n == 0 then 1 else n * factorial (n - 1)


or 

factorial 0 = 1
factorial n = n * factorail (n - 1)

-}

module DF where


    doubleFact :: Integer -> Integer
    doubleFact n = if n <= 0 then 1 else n * doubleFact (n - 2)


    {- 
    OR
    doubleFact :: Integer -> Integer
    doubleFact 0 = 1
    doubleFact 1 = 1
    doubleFact n = n * doubleFact (n - 2)
    

    doubleFact :: Integer -> Integer
    doubleFact n = product [n, n - 2 .. 1]
    
    -}