{- 

можно так: 
> max 6 7

или так: 
> 6 `max` 7

можно так:
6 + 7

или так: 

(+) 6 7

просто запомни:

infixr 8 ^, `logBase`
infixl 7 *,/, `div`, `mod`
infixl 6 +, -
infix 4 ==, /=, >, >=, <, <=

пример1: 2 ^ 3 ^ 2 = 2 ^ (3 ^ 2) = 2 ^ 9 = 512 - потомучто infixr - правая ассоциативность

пример2: (*) 2 ((+) 1 4) ^ 2 = (*) 2 5 ^ 2 = 10 ^ 2


можно сделать свой  оператор из символов

! # $ % & * + . / < = > ? @ \ | ^ - ~ : -

оператор суммы квадратов

infixl 6 *+*

a *+* b = a ^ a + b ^ b 

-}

module Demo where
    infixl 6 *+*

    a *+* b = a ^ 2 + b ^ 2 

    infixl 6 |-|
    x |-| y = sqrt((x-y)^2)

{-
    (2/) 4 = 0.5
    (/4) 2 = 2.0

    переопределение символов

    f $ x = f x => sin 0 == sin $ 0
    причем $ - уже определен и имеет самый низкий приоритет 
    поэтому:

    sin (pi/2) == sin $ pi/2

    logBase 4 (min 20 (9 + 7)) == logBase 4 $ min 20 $ 9 + 7

 -}