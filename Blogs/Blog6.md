# Week 6 Blog
**The next couple blogs I will go into Turing completeness, Church encoding, and the Church-Turing Thesis.**
## The Turing Machine
In 1935, Alan Turing developed the Turing Machine, a hypothetical, mathematical model created to argue any function with natural numbers can be computed. The machine can simulate any computer algorithm, regardless of complexity. The machine is not a real 'machine', but rather a mathematical concept that consists of a system of rules with states and transitions. The Turing Machine has the two purposes of deciding formal languages and solving mathematical functions. 

## How the Turing Machine Works
A Turing machine consists of a finite program(finite control) that is able to change a linear list of cells using one access pointer called the head. The two directions on the cells, or tape are right and left. The finite program can be in any one of a finite set of states X, and each cell can contain a 0, 1, or a blank. The time starts at 0 when the computation starts and are incremented by 1 (Ex. 0,1,2...). 

1. At time 0 the head is positioned on a start cell, and the finite control is in state x0. 
2. At time 0 all cells are blank(B), except for a contiguous finite sequence of cells, extending from the start cell to the right, which contain 0's and 1's.
3. This binary sequence is called the `input.' The device can perform the following basic operations:
    * write an element from A={0,1,B} in the cell it scans
    * shift the head one cell left or right.


<img src="https://iq.opengenus.org/content/images/2019/07/TurigMachine.png" alt="Turing Machine" class = "alignleft" height = "300" width="500"/>

### References
https://www.cs.cmu.edu/~rwh/talks/cs50talk.pdf

http://www.scholarpedia.org/article/Turing_machine