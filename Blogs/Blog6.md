# Week 6 Blog
**The next couple blogs I will go into Turing completeness, Church encoding, and the Church-Turing Thesis.**
## The Turing Machine
In 1935, Alan Turing developed the Turing Machine, a hypothetical, mathematical model created to argue that any function with natural numbers can be computed. It can simulate any computer algorithm, regardless of complexity. The machine is not a real 'machine', but rather a mathematical concept that consists of a system of rules with states and transitions. The Turing Machine has the two purposes of deciding formal languages and solving mathematical functions. Turing's objective for building the model was to form how we do abstract reasoning.

<img src="https://i0.wp.com/www.worldofcomputing.net/wp-content/uploads/2013/01/turingMachine.gif?resize=400%2C274" alt="TuringMachine" class = "alignleft" height = "300" width="500"/>

## Turing's Thesis
**Turing's demonstration of his mathematical model showed that everything that can be computed by a human computer using a fixed procedure, can be computed by the Turing Machine. “L.C.M.s [Logical Computing Machines] can do anything that could be described as ‘rule of thumb’ or ‘purely mechanical’.” (stanford.edu)**

## Turing Machine Deciding Formal Languages
Turing machines can also be used to define formal languages. For example:
```
L={𝑥 ∈ Σ∗|M halts when given ⟨𝑥⟩ as input}
```
- L: Formal Language
- M: Turing machine

For L, if there exists a M that halts if and only if its input belongs to L, then the language is called Turing-recognizable. The languages that cannot be defined by the Turing machine are said to be non-computable. Turing machines help with the study of normal languages. (stackexchange)


### References
https://plato.stanford.edu/entries/church-turing/

https://cs.stackexchange.com/questions/62668/are-turing-machines-and-formal-languages-the-same-mathematical-object

https://www.cs.virginia.edu/~robins/Turing_Paper_1936.pdf