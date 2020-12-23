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

### References
https://www.techopedia.com/definition/8801/pattern-matching#:~:text=Pattern%20matching%20in%20computer%20science,the%20case%20of%20pattern%20matching.&text=Many%20applications%20make%20use%20of,major%20part%20of%20their%20tasks.

https://www.tutorialspoint.com/haskell/haskell_functions.htm

https://www.haskell.org/tutorial/functions.html