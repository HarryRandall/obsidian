**Class**: [[COMP1600 - Theoretical Computer Science]]
**Date**: Wednesday, 10 September 2025, 09:58
**Tags**: 

---
**Dirk Patterson** - Funny guy
#### Lecture 15
**Optimisation Example - Towers of Hanoi**
- Three poles with disks of varying sizes
- Larger disks may **never** be on top of smaller ones
- You may only move one disk at a time.

**Strategy**
- Move $n - 1$ discs from pole 1 to pole 2.
- Move the largest disk from pole 1 to pole 3.
- Move $n - 1$ discs from pole 2 to pole 3.

![[Pasted image 20250910101030.png]]

##### Proof by Induction
- Proofs by induction are easy
- Proof steps click together like well oiled machinery
- Even the machine can do them automatically.

- Finding the statement to prove is hard
- Often need a relation between all parameters of the problem
- Finding the relation is non-trivial ('spot the pattern')
- The machine is not clever enough to do it.

#### Lecture 16

**Induction on Structure**
$$
\frac{P(\text{Nil}) \quad \forall x.\,\forall xs.\, P(xs) \Rightarrow P(\text{Cons}(x, xs))}
     {\forall xs.\, P(xs)}
$$

- Here $\text{Nil}$ and $xs$ are of type $\text{List}\langle T\rangle$ and $x$ is of type $T$.

##### Example: Map

**Functions as parameters**
- A function can be passed in as a parameter to another function.

**Map**
```c
function Map<T>(f: T -> T, xs: List<T>): List<T> {
  match xs
    case Nil => Nil
    case Cons(x, tail) => Cons(f(x), Map(f, tail))
}
```

**Example**
- Suppose `AddOne(Int): Int` was defined, which adds one to a given int.  
  `Map(AddOne, xs)`, where `xs` is `[1,4,2,5]` would return `[2,5,3,6]`.

**Recall the definition of Length:**
```c
function Length<T>(xs: List<T>): nat {
  match xs
    case Nil => 0
    case Cons(_, tail) => 1 + Length(tail)
}
```

**We want to prove:**  
$$\forall xs.\; \text{Length}(\text{Map}(f, xs)) = \text{Length}(xs)$$

**Base Case: $xs$ is Nil**  
LHS $= \text{Length}(\text{Map}(f, \text{Nil}))$  
$= \text{Length}(\text{Nil})$ by the def. of Map.  
$= \text{RHS}$

#### Lecture 17
Mostly in Dafny, using Auxiliary Lemmas
