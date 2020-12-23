# Week 8 Blog
**This blog will explain computability theory and the halting problem.**

## Computability (Recursion) Theory
Computability Theory is the area of mathematics dealing with the concept of an effective procedure (algorithm), a procedure that can be carried out by following specific rules. 

The Turing computability theory states that: "a set of natural numbers is said to be a computable set, given a number n, halts with output 1 if n is in the set and halts with output 0 if n is not in the set. A function f from the natural numbers to themselves is a recursive,computable function if there is a Turing machine that, on input n, halts and returns output f(n)"(wiki).

## Turing Degree
The Turing degree (degree of unsolvability) of a set of natural numbers measures the level of algorithmic unsolvability of the set. If a set A is computable relative to a set B, we say that A is Turing reducible to B (A ≤T B). By identifying sets that are reducible to each other, we are led to the notion of the Turing degree. (sciencedirect)

## Turing Reduction
Turing reductions are able to be applied to both decision problems and function problems. A Turing reduction from a problem A to a problem B, is a reduction which solves A, assuming the solution to B is already known(Rogers 1967, Soare 1987). A Turing reduction is a function computable by an oracle machine (abstract machine) with an oracle for B. "If a Turing reduction of A to B exists then every algorithm for B can be used to produce an algorithm for A, by inserting the algorithm for B at each place where the oracle machine computing A queries the oracle for B."(wiki)

## Halting Problem
One of well known unsolvable problems is the halting problem due to the problem being undecidable. In 1936, Alan Turing proved that the halrting problem is unsolvable using the Turing machine.

The halting problem is the following question: 
"Given an arbitrary Turing machine M over alphabet = {a,b}, and an arbitrary string w over, does M halt when it is given w as an input?"

For example in Python,
```
w = input()
while w:
    pass
```
If the input is not empty, the program will loop forever. If the input is empty, the program will terminate.


<img src="https://serokell.io/files/sr/srzhuly3.halting-problem.png" alt="Turing Machine" class = "alignleft" height = "300" width="500"/>

### References
[Computability Wiki](https://en.wikipedia.org/wiki/Computability_theory)

[Computability ScienceDirect](https://www.sciencedirect.com/topics/mathematics/computability-theory)

[Turing Reduction Wiki](https://en.wikipedia.org/wiki/Turing_reduction)

[Halting Problem Wiki](https://brilliant.org/wiki/halting-problem/)
