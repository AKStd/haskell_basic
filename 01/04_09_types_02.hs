{-
импорты


module Demo where

import Data.Char

test = isDigit '1'
-}




import Data.Char
twoDigits2Int :: Char -> Char -> Int
twoDigits2Int x y = if isDigit x && isDigit y then 10 * digitToInt x + digitToInt y else 100

{-
twoDigits2Int x y
  | all isDigit [x, y] = read [x, y] :: Int
  | otherwise = 100

-}