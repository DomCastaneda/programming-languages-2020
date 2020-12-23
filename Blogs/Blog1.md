# Week 1 Blog
## My Intro

Hi I'm Dominic Castaneda, a junior at Chapman University. I am currently a software engineering major with a game development programming minor.

## My Haskell Installation Experience on macOS Catalina

Copy and paste this into your mac terminal

```
curl -sSL https://get.haskellstack.org/ | sh
```

After following terminal instructions, type this into terminal to start the Haskell Read-Eval-Print-Loop.

```
stack exec ghci
```

This worked for me perfectly and I had no issues with the above approach. Haskell is then downloaded on your computer and you are now ready to begin programming. If there are still issues go to: https://www.haskell.org/platform/

## Getting Started

In order to use Haskell, you can use a text editor (I use Visual Studio Code). We already have GHC installed and it can Haskell code of a .hs extension and compile it. 

To load a file you can type:

```
:load /Users/dom/Documents/CPSC_Courses/CPSC354/Assignment1/myfile.hs 
```

## What is Haskell?

Haskell is a **functional programming language**, not an imperative language. As a functional language, Haskell doesn't tell the computer what to do, but tells the computer what stuff is. A pro to functional programming is that if a function is called twice with the same parameters, it will always have the same result. This is called **referencial transparency** and allows the programmer to create complex functions by implementing simple functions together. Similar to C, Haskell is also statically typed, the types are checked before run-time. Static typing has the advantage that errors can be caught before the program runs. Any type errors are caught at compile time, which proves useful with large libraries. **Type inference** is what Haskell uses and it figures out the type so you dont have to explicitly label every piece of code. 

For example with:
```
A = 2 * 2
```
Haskell can figure out A is a number through type inference.

We can show how Haskell uses type inference by using the :t command in GHCI:
```
ghci> :t 'x'  
'x' :: Char  
ghci> :t True  
True :: Bool  
ghci> :t "StringOfChar"  
"StringOfChar" :: [Char]  
ghci> :t (True, 'x')  
(True, 'x') :: (Bool, Char)  
ghci> :t 1 == 2  
1 == 2 :: Bool 
```

The command :t on an expression prints out the expression followed by :: and its type.

### References
https://www.freecodecamp.org/news/how-to-format-code-in-markdown/

http://learnyouahaskell.com/introduction

