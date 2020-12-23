# Week 10 Blog
**This blog goes over Turing completeness, and I found an interesting stackoverflow that discusses Haskell and Turing completeness.**
## Turing Completeness
Turing completeness is a property of a computational system that states the system is able to simulate any Turing machine. Any program isn't technically going to be fully Turing complete, because no computer can yet copmute Graham's number. These programs are called Linear Bounded Automaton and they're nearly identical to Turing machines, except there is a left and right boundary to the 'tape'. 

<img src="https://www.static-contents.youth4work.com/y4w/Documents/Portfolio/840a7f38-5ce6-4c55-ad6a-bf0e64b9960c.jpg" alt="Turing Machine" class = "alignleft" height = "300" width="500"/>


## Why Lambda-Calculus is Turing Complete
The only way to prove lambda calculus is Turing complete would be by implementing a Turing machine into lambda calculus. Untyped lambda calculus is Turing complete, but typed lambda calculus is not. Since 𝜆 is normalizing, every program is guaranteed to halt. Simulating on discrete input types can be sufficient to form choice, but we can't operate over discrete amounts of memory because types don't recurse.

## Haskell and Turing completeness
**I found the following off stackoverflow but I found it interesting.**
The following definition shows how Haskell adds Turing completeness
```
fix :: (a -> a) -> a
fix f = let x = f x in x
```
By adding recursive binding, allows for Haskell to be Turing complete. This applies to types and values.
```
data Rec a = Rec {unrec :: Rec a -> a}
y :: (a -> a) -> a
y f = u (Rec u)
  where u x = f $ unrec x x
```
### References
https://medium.com/@evinsellinwhat-exactly-is-turing-completeness-a08cc36b26e2

https://stackoverflow.com/questions/25255413how-did-haskell-add-turing-completeness-to-system-f