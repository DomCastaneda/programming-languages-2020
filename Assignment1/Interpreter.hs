module Interpreter where

import AbsNumbers

eval :: Exp -> Integer
eval (Num n) = n
eval (Plus n m) = (eval n) + (eval m)
eval (Times n m) = (eval n) * (eval m)
eval (Subtr n m) = (eval n) - (eval m)
eval (Div n m) = (eval n) `div` (eval m)
eval (Powr n m) = (eval n) ^ (eval m)
eval (Mod n m) =  (eval n) `mod` (eval m)
eval (Rem n m) =  (eval n) `rem` (eval m)