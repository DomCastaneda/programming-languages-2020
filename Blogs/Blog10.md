# Week 10 Blog
**This blog goes over Turing completeness, and I found an interesting stackoverflow that discusses how Haskell implemented a Turing completeness**
## Turing Completeness
Turing completeness is a property of a computational system that states the system is able to simulate any Turing machine. Any program isn't technically going to be fully Turing complete, because no computer can yet copmute Graham's number. These programs are called Linear Bounded Automaton and they're nearly identical to Turing machines, except there is a left and right boundary to the 'tape'. 

<img src="https://www.static-contents.youth4work.com/y4w/Documents/Portfolio/840a7f38-5ce6-4c55-ad6a-bf0e64b9960c.jpg" alt="Turing Machine" class = "alignleft" height = "300" width="500"/>


## Why Lambda-Calculus is Turing Complete
The only way to prove lambda calculus is Turing complete would be by implementing a Turing machine into lambda calculus.

## Haskell adding Turing completeness to System F


### References
https://medium.com/@evinsellinwhat-exactly-is-turing-completeness-a08cc36b26e2

https://stackoverflow.com/questions/25255413 how-did-haskell-add-turing-completeness-to-system-f