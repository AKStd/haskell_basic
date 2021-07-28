{- 
Кортежи
 - длина - const
 - разные типы внутри
(2, True)

fst (2, True)
> 2

snd (2, True)
> True

() - пустой кортеж
:t ()
() :: ()




Списки

- длина - изменяемая
- только один тип внутри!

 
[1,2,3,4,5,5]

:t [True, False]
[True, False] :: [Bool]

причем:

:t ['H', 'i']
['H', 'i'] :: [Char]

String == [Char]

добавление элемента в голову списка

let str = 'H' : 'ello'
> "Hello"

конкретинация (сложение)

str ++ "world"


-}
module Dist where

    

    delta :: (Double , Double) -> Double
    delta (a,b) = b - a

    dist :: (Double, Double) -> (Double, Double) -> Double
    dist p1 p2 = sqrt (delta p1 ^2 + delta p2^ 2)



{-
infixl 6 *+*
a *+* b = a ^ 2 + b ^ 2

infixl 6 |-|
a |-| b = abs (a - b)

dist :: (Double, Double) -> (Double, Double) -> Double
dist p1 p2 = sqrt $ (fst p1 |-| fst p2) *+* (snd p1 |-| snd p2)


dist :: (Double, Double) -> (Double, Double) -> Double
dist p1 p2 = sqrt $ (fst p2 - fst p1) ^ 2 + (snd p2 - snd p1) ^ 2

 -}