# Week 1 Blog
**My Intro**

Hi I'm Dominic Castaneda, a junior at Chapman University. I am currently a software engineering major with a game development programming minor.

**Haskell Intro**

Haskell is a **functional programming language**, not an imperative language. As a functional language, Haskell doesn't tell the computer what to do, but tells the computer what stuff is. A pro to functional programming is that if a function is called twice with the same parameters, it will always have the same result. This is called **referencial transparency** and allows the programmer to create complex functions by implementing simple functions together. Haskell is also statically typed, meaning that the compiler knows each piece of code as a number or string already. A lot of errors are caught at compile time. **Type inference** is what Haskell uses and it figures out the type so you dont have to explicitly label every piece of code. 

For example with:
```
A = 2 * 2
```
Haskell can figure out A is a number throught the type inference.
Citation: http://learnyouahaskell.com/introduction

**My Haskell Installation Experience on macOS Catalina**

Copy and paste this into your mac terminal

```
curl -sSL https://get.haskellstack.org/ | sh
```

After following terminal instructions, type this into terminal to start the Haskell Read-Eval-Print-Loop.

```
stack exec ghci
```

This worked for me perfectly and I had no issues with the above approach. Haskell is then downloaded on your computer and you are now ready to begin programming. If there are still issues go to https://www.haskell.org/platform/

**Getting Started**

In order to use Haskell, you can use a text editor (I use Visual Studio Code). We already have GHC installed and it can Haskell code of a .hs extension and compile it. 

To load a file you can type:

```
:load /Users/dom/Documents/CPSC_Courses/CPSC354/Assignment1/myfile.hs 
```
