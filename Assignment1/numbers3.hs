-- an interpreter for abstract syntax in Haskell

-- a language for arithmetic expressions
data Exp = Num Integer | Plus Exp Exp | Times Exp Exp | Subtr Exp Exp | Div Exp Exp | Powr Exp Exp | Mod Exp Exp | Rem Exp Exp

eval :: Exp -> Integer
eval (Num n) = n
-- the next two equations show two common naming conventions
-- choose the one you like better
eval (Plus n m) = (eval n) + (eval m)
eval (Times n m) = (eval n) * (eval m)
eval (Subtr n m) = (eval n) - (eval m)
eval (Div n m) = (eval n) `div` (eval m)
eval (Powr n m) = (eval n) ^ (eval m)
eval (Mod n m) =  (eval n) `mod` (eval m)
eval (Rem n m) =  (eval n) `rem` (eval m)
--eval (Times (Num 2) (Num 3))
--eval (Plus (Num 1) (Times (Num 2) (Num 3)))