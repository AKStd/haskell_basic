-- if x > 0 then 1 else (-1)
-- let f x = if x > 0 then 1 else (-1)
-- let g x = (if x > 0 then 1 else (-1)) + 3
module IfElse where
-- sign x = if x < 0 then (-1) else if x > 0 then 1 else 0

-- or 
sign2 x
  | x < 0 = - 1
  | x > 0 = 1
  | otherwise = 0

-- частично заполненые функции
-- let max5 x = max 5 x
-- or
-- let max5' = max 5
