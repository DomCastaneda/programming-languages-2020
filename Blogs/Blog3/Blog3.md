# Week 3 Blog
**Haskell Functions**
This function multiplies two arguments which are integers.
```
mult :: Integer -> Integer -> Integer
mult x y =  x * y
```
**Pattern Matching**
"Pattern matching in computer science is the checking and locating of specific sequences of data of some pattern among raw data or a sequence of tokens." It matches specific types of expressions. It is used in the below code when calculating the factorial.
```
fact :: Int -> Int 
fact 0 = 1 
fact n = n * fact ( n - 1 ) 
```
If the argument is not equal to 0, the function will loop until it reaches 0.

**Lamba Abstractions**
You can define functions using lambda abstraction which is another name for an "anonymous function".

I will show the following code using lambda abstraction.
```
func x = x + 1
add x y = x + y
```
The next code block shows the above code in lambda formation.
```
func = \x -> x + 1
add = \x y -> x + y
```

**Infix Operators**
These operators are functions that can be defined using equations. 
```
(++) :: [a] -> [a] -> [a]
[] ++ ys =  ys
(x:xs) ++ ys =  x : (xs++ys)
(.) :: (b->c) -> (a->b) -> (a->c)
f . g  = \ x -> f (g x)
```
The above code was gotten from https://www.haskell.org/tutorial/functions.html
