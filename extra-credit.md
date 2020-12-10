# Extra Credit

If you want to do a project for extra credit, get in touch with me as soon as possible, certainly no later than **Fri, Dec 11**. 

Here are some ideas.

## Making `LambdaNat` more efficient and user friendly

The programming language `LambdaNat` has been designed by Sam Balco and myself with the aim to find the fastest route to a simple interpreter such that

- the interpreter is short (the part that operates on abstract syntax has approximately 50 loc),
- all programs can be executed pen and paper as well as by the machine,
- programming feels like in a simple functional programming language (imperative features will be added later).

The first two items give us full control and a complete understanding of what is going on "under the hood" of `LambdaNat` and the last item gives us the confidence that this understanding will scale to real world programming languages

On the other hand, this approach alsomeans that we compromise both efficiency and user experience. The following projects address some of the missing features.

#### Adding Features to `LambdaNat`

- Binary numbers are much more efficient than successor numbers. Replace successor numbers in `LambdaNat` with Haskell's integer arithmetic. Add "+", "-", "*" to your grammar and evaluate these operations using Haskell's arithmetic. Call the new language and interpreter `LambdaNat6`. Can you evaluate `fib 20` in `LambdaNat6`? What is the largest `n` for which fibonacci-in-Python terminates without letting the user wait? How does `LambdaNat6` improve the efficiency of mergesort? 

- Currently, we have only one data type, namely expressions. Add Booleans to LambdaNat. If you extend `LambdaNat6` you should use Haskell's Booleans for this (otherwise you can also implement your own). Add a new type of expressions, say, `BExp` to the grammar. Add operations `and`, `or`, `not` as well as `==`, `<=`, `<`, `>`, `>=`. Rewrite the mergesort of Assignment 2 in this new language for testing. Note that you need now two evaluation functions, one for `Exp` and one for `BExp`.

- Implement a more efficient substitution function. (That could have a great effect on efficiency since subsitution (= beta reduction) is the computational engine of the interpreter.) Here are some [notes](https://hackmd.io/@alexhkurz/SyoTUBxoP).

- Add a module system so that not all programs must be in the file.

Later in the course we will add variables, assignment, while loops and pointers.

#### Adding More Features to `LambdaNat`


- Add input and output.

- Replace the fixed point combinator by a mechanism that uses a call stack. 

- Add pattern matching.

- Add a type system.

We will learn about type checking in next semester's Compiler Construction.

## Encoding all computation in lambda-calculus

Alternatively, you could also make things less efficient and even more principled. We have seen that we can encode numbers directly in the lambda calculus. The same is true for conditionals. And lists. 

- Write a `LambadNat5` interpreter that uses beta-reduction as its only computation step. Run Assignment2 in that interpreter for testing.

