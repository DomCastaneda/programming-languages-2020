# Week 15 Blog
**This blog goes a bit of bonus information about anonymous functions in Haskell and is in part a contintuation of Blog 5.**
## Anynymous Functions
An anonymous function is a function without a name and is also a lambda abstraction.

Ex. This is a nameless function which increments its parameter, x:
```
Prompt> (\x -> x - 1) 1
0 :: Integer
```

Ex. Function of two parameters, x and y: 
```
\x y -> x + y
Prompt> (\x y -> x - y) 3 1
2 :: Integer
```

Ex. Naming a lambda expressions:
```
minusOne = \x -> x - 1
```

It is more convenient to use a lambda expression rather than giving a function a name, 
Ex. Using a map and foldr/foldr without anonymous functions:
```
addOneList lst = map addOne' lst
  where addOne' x = x + 1
```

Ex. Using a map and foldr/foldr with anonymous functions:
```
addOneList' lst = map (\x -> x + 1) lst
```

### References
https://wiki.haskell.org/Anonymous_function