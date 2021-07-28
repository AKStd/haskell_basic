{- 
:type - определение типа

1)char:
'c' -  символы + unicode в том числе \n \t итд
'zz' - не char!

2)bool:
True, False

числа:

:t 3
> 3 :: Num a => a

let x = 3 :: Int
> 3

let s = 138492369724659739758346376 :: Integer

let y = 3 :: Double
> 3.0

Int + Double = Double

t: 3.5
3.5 :: Fractional a => a 

Fractional - (Double, Flaot)


(&&) False True
:t (&&)
(&&) :: Bool -> Bool -< Bool
-}

discount :: Double -> Double -> Double -> Double
discount limit proc sum = if sum >= limit then sum * (100 - proc) / 100 else sum

standardDiscount :: Double -> Double
standardDiscount = discount 1000 5