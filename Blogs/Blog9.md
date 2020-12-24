# Week 9 Blog
## Optional Exercise (Turing machines as rewrite systems)
Any TM can be equivalently formulated as a string rewriting system. A string rewriting system(SRS) is a tuple (Σ,A). Σ is a letter and is assumed finite. a is a binary relation on strings. Each ∈ A has a rewriting rule written like a->b.

Simple Example:
```
red blue -> red
blue red -> red
red red -> blue
blue blue -> red
```

Turing Example:
```
qS->S'q'
qR->R'q'
S'->S
Sq->q'
R'q'->q
```

### References