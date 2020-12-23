# Week 7 Blog
**This blog will go into detail on my research on how the Turing machine processes algorithms.**
## How the Turing Machine Works
A Turing machine consists of a finite program(finite control) that is able to change a linear list of cells using one access pointer called the head. The two directions on the cells, or tape are right and left. The finite program can be in any one of a finite set of states X, and each cell can contain a 0, 1, or a blank. The time starts at 0 when the computation starts and are incremented by 1 (Ex. 0,1,2...). 

1. At time 0 the head is positioned on a start cell, and the finite control is in state x0. 
2. At time 0 all cells are blank(B), except for a contiguous finite sequence of cells, extending from the start cell to the right, which contain 0's and 1's.
3. This binary sequence is called the `input.' The device can perform the following basic operations:
    * Write an element from A={0,1,B}
    * Shift the head one cell to the left or right

At the end of each step, the finite control takes on a state from X.

4. The rules have a format (p,s,a,x) 
    - p is the current state of the finite control 
    - s is the symbol under scan
    - a is the next operation to be executed of type (1) or (2) designated in the obvious sense by an element from S={0,1,B,L,R}
    - x is the state of the finite control to be entered at the end of this step 
5. We must assume the device is **deterministic**, that "there are no two distinct quadruples that have their first two elements identical."
6. Not every possible combination of the first two elements has to be in the set. The device can then perform no operation and the device 'halts'.  
7. The machine is then defined by a mapping from a finite subset of X×A to S×Q.
8. Strings and natural numbers are occasionally identified according to the pairing(ϵ,0),(0,1),(1,2)...(ϵ denotes the empty string with no bits).

The Turing machine carries out a uniquely determined succession of operations which may or may not terminate.


<img src="https://iq.opengenus.org/content/images/2019/07/TurigMachine.png" alt="Turing Machine" class = "alignleft" height = "300" width="500"/>

### References
http://www.scholarpedia.org/article/Turing_machine