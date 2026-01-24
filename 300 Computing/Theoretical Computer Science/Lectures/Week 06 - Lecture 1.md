---
course: "[[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]"
type: lecture
date: 2025-09-10
week: 6
session: 1
instructor: Dirk Patterson
tags:
  - lecture
  - theoretical-computer-science
  - structural-induction
  - map
status: in-progress
---

# Week 06 - Lecture 1

> [!info] Lecture Details
> **Course:** [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]
> **Type:** Lecture
> **Date:** Wednesday, 10 September 2025
> **Week:** 6
> **Lecture #:** 1
> **Instructor:** Dirk Patterson
> **Recording:** [Link]()

---

## Overview

Continuation of structural induction covering Towers of Hanoi, induction on structure, and the Map function with proofs about length preservation.

---

## Key Concepts

### 1. Optimisation Example - Towers of Hanoi

- Three poles with disks of varying sizes
- Larger disks may **never** be on top of smaller ones
- You may only move one disk at a time.

**Strategy**
- Move $n - 1$ discs from pole 1 to pole 2.
- Move the largest disk from pole 1 to pole 3.
- Move $n - 1$ discs from pole 2 to pole 3.

![[Pasted image 20250910101030.png]]

### 2. Proof by Induction

- Proofs by induction are easy
- Proof steps click together like well oiled machinery
- Even the machine can do them automatically.

- Finding the statement to prove is hard
- Often need a relation between all parameters of the problem
- Finding the relation is non-trivial ('spot the pattern')
- The machine is not clever enough to do it.

### 3. Induction on Structure

$$
\frac{P(\text{Nil}) \quad \forall x.\,\forall xs.\, P(xs) \Rightarrow P(\text{Cons}(x, xs))}
     {\forall xs.\, P(xs)}
$$

- Here $\text{Nil}$ and $xs$ are of type $\text{List}\langle T\rangle$ and $x$ is of type $T$.

### 4. Example: Map

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

### 5. Recall the definition of Length

```c
function Length<T>(xs: List<T>): nat {
  match xs
    case Nil => 0
    case Cons(_, tail) => 1 + Length(tail)
}
```

### 6. We want to prove

$$\forall xs.\; \text{Length}(\text{Map}(f, xs)) = \text{Length}(xs)$$

**Base Case: $xs$ is Nil**  
LHS $= \text{Length}(\text{Map}(f, \text{Nil}))$  
$= \text{Length}(\text{Nil})$ by the def. of Map.  
$= \text{RHS}$

### 7. Lecture 17

Mostly in Dafny, using Auxiliary Lemmas

---

## Notes

---

## Examples

> [!example] Map Function
> ```c
> function Map<T>(f: T -> T, xs: List<T>): List<T> {
>   match xs
>     case Nil => Nil
>     case Cons(x, tail) => Cons(f(x), Map(f, tail))
> }
> ```
> 
> Example: `Map(AddOne, [1,4,2,5])` returns `[2,5,3,6]`

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Map Function | Applies a function to each element of a list |
| Higher-Order Function | A function that takes another function as a parameter |
| Towers of Hanoi | A puzzle involving moving disks between poles with constraints |

---

## Questions & Discussion

- [ ] How does the Map function preserve list structure?
- [ ] Why is finding the right statement to prove often harder than the proof itself?
- [ ] How do auxiliary lemmas help in Dafny proofs?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Practice with Map function
- [ ] Work through Towers of Hanoi problem
- [ ] Understand auxiliary lemmas in Dafny

---

## Related Notes

- [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Course Summary]]
- [[300 Computing/Theoretical Computer Science/Lectures/Week 05 - Lecture 1|Week 05 - Lecture 1]]

---

## References
