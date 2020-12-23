# Week 5 Blog
## Lambda and Haskell
Lambda abstraction is refered to as an anonymous function without a name. To use proper lambda notation, use \ as the lambda greek letter and then add the parameters. Then write a ->, followed by the function body. Also surround the body with parenthesis. Lambdas are surrounded by parentheses unless they are meant to extend all the way to the right. 
The following function has a parameter, x:

```
Prompt> (\x -> x + 1) 1
2 :: Integer
```

The following function has two parameters, x and y:
```
Prompt> (\x y -> x + y) 1 3
4 :: Integer
```

## Why We Use Lamda Expression
It is more useful to use lambda exression rather than giving a function a name in some cases. It is also used when we need some functions only once. Two useful cases to use lambda are when using map, flip or reduce. "Lambda calculus is a formal mathematical system for expressing the notion of computation." Functional programming languages are based upon the lambda calculus such as Haskell. We use lambda for passing the function result to a higher order function.

Here is the flip function that uses lambda:

```
flip :: (a -> b -> c) -> b -> a -> c  
flip f = \x y -> f y x  
```

Here is the map function that also uses lambda:

```
map :: (a -> b) -> [a] -> [b]  
map f xs = foldr (\x acc -> f x : acc) [] xs
```
More usefull lambda functions can be found on http://learnyouahaskell.com/higher-order-functions#:~:text=The%20most%20common%20use%20case,a%20function%20as%20a%20parameter.

### References
https://wiki.haskell.org/Anonymous_function

https://wiki.haskell.org/Lambda_calculus

http://learnyouahaskell.comhigher-order-functions#:~:text=The%20most%20common%20use%20casea%20function%20as%20a%20parameter.