# Week 12 Blog
**This blog I will explain Church encoding and how it is applied to booleans and numerals**
## Church Encoding
Since lambda calculus is Turing complete, we can encode any computation. Church encoding is a way to represent data and operators in lambda calculus.

## Church Booleans
Church boolean operations can allow us to build logical interface systems. Here are the Church boolean operations:

**True**
```
λx.λy.x
```
**False**
```
λx.λy.y
```
**not**
```
λx.x false true
```
**and**
```
λx.λy.x y false
```
**or**
```
λx.λy.x true y
```

## Church Numerals
Here is the Church encoding of non-negative integers:

**0**
```
λf.λy.y
```
**1**
```
λf.λy.f y
```
**2**
```
λf.λy.f(f(y))
```
**n+1**
```
λf.λy.f(n(f(y)))
```

### References
[Lambda Encodings](https://www.cs.umd.edu/class/fall2017/cmsc330/lectures/02-lambda-calc-encodings.pdf)