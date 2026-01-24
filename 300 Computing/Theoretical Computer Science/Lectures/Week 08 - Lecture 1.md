---
course: "[[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]"
type: lecture
date: 2025-09-24
week: 8
session: 1
instructor: 
tags:
  - lecture
  - theoretical-computer-science
  - termination
  - well-founded-orders
status: in-progress
---

# Week 08 - Lecture 1

> [!info] Lecture Details
> **Course:** [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]
> **Type:** Lecture
> **Date:** Wednesday, 24 September 2025
> **Week:** 8
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Introduction to termination proofs for recursive functions, covering non-terminating functions, well-founded orders, and termination measures. Discusses why termination is necessary for proof principles to work correctly.

---

## Key Concepts

### 1. Non-Terminating Functions

- Non-Terminating (`nt`) is illegal, and is a program that won't end.

```c
nt (n: int) : int { nt(n) + 1}
```

- With this definition, we could prove that
```c
0 = nt(0) - nt(0) 
  = nt(0) + 1 - nt
  = 0 = 1
```

- So we have proved that `0 = 1`, which isn't true.
- The proof principles outlined here only work if all functions are terminating.

### 2. Halting Problem

**Question:** Can you write a program that (a) takes in a program (file) as input, and (b) checks whether the program prints "hello world", nothing else, and stops?

- No, because what if you have

```python
while True():
	pass
print("hello world")
```

- You can't prove it.

### 3. Proving Termination

**Question:** How do we prove that a function terminates?

```c
function len(l: List<int>): int{
	match l {
			case Nil => 0
			case Cons(h, t) => 1 + len(t)
		}
}
```

### 4. Generic Recursive Functions

```c
function f(x1, ..., xn){
	... (some code) .. f(e1, ..., en) .. (more code)
}
```

- `e1, ..., en` are expressions typically involving `x1, ..., xn`
- Need: `T(e1, ..., en) < T(x1, ..., xn)` for all recursive calls `f(e1, ..., en)`
- Where `T` is a function with values in a well-founded order.

### 5. Well-Founded Orders

- `(S, <)` so that there are no infinite sequences `S0 > S1 > S2 > ...`
- Guarantees no infinite sequences of recursive calls.

### 6. List Merging Example

```c
function merge(l1: List<int>, l2: List<int>) : List<int>
  decreases
  match l1 {
    case Nil => l2
    case Cons(h, t) => Cons(h, merge(l2, t))
  }
}
```

---

## Notes

---

## Examples

> [!example] Non-Terminating Function
> ```c
> nt (n: int) : int { nt(n) + 1}
> ```
> This function never terminates, leading to invalid proofs.

> [!example] Terminating Function
> ```c
> function len(l: List<int>): int{
>   match l {
>     case Nil => 0
>     case Cons(h, t) => 1 + len(t)
>   }
> }
> ```
> This function terminates because the list gets smaller with each recursive call.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Termination | Property that a function always returns a value in finite time |
| Well-Founded Order | An order relation with no infinite descending sequences |
| Termination Measure | A function that decreases on each recursive call |
| Halting Problem | The undecidable problem of determining if a program halts |

---

## Questions & Discussion

- [ ] Why is termination necessary for proof principles?
- [ ] What makes an order well-founded?
- [ ] How do you construct a termination measure?
- [ ] Why is the halting problem undecidable?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Practice identifying termination measures
- [ ] Understand well-founded orders
- [ ] Work with `decreases` clauses in Dafny

---

## Related Notes

- [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Course Summary]]
- [[300 Computing/Theoretical Computer Science/Lectures/Week 07 - Lecture 1|Week 07 - Lecture 1]]

---

## References
