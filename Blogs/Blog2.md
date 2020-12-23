# Week 2 Blog
## Basic Haskell Syntax

Hasklell, a functional languauge, evaluates expressions and yields values.
```
--this is how to comment
{-block comment-}

--basic syntax
1+2
2*3
3-1
6/2
6 `div` 2
--constructing lists
[]
x:xs
[1,2,3]
1:(2:(3:[]))
```

## Typing in Haskell
```
1  :: Integer
'a' :: Char
int :: Integer -> Integer
[1,2,3] :: [Integer]
('b',4) :: (Char,Integer)
```
"::" means "has type" and all type errors are detected at compile time

## Polymorphic Types

Haskell has polymorphic types, which describes families of types.
```
head :: [a] -> a
head (x:xs) =  x

tail :: [a] -> [a]
tail (x:xs) = xs
```
Function head returns the first element of a list, function tail returns all but the first.

## User Defined Types

Define your own types using a data declaration.
For Example:
```
data Bool = False | True
data Color = Blue | Yellow | Red
```

### References
[Haskell Functions](https://www.tutorialspoint.com/haskell/haskell_functions.htm)
