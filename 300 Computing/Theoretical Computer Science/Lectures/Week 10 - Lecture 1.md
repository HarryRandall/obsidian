---
course: "[[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]"
type: lecture
date: 2025-10-07
week: 10
session: 1
instructor: 
tags:
  - lecture
  - theoretical-computer-science
  - while-loops
  - loop-invariants
status: in-progress
---

# Week 10 - Lecture 1

> [!info] Lecture Details
> **Course:** [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]
> **Type:** Lecture
> **Date:** Tuesday, 7 October 2025
> **Week:** 10
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Introduction to reasoning about while loops using loop invariants. Covers the while rule, finding good invariants, and the counting loop invariant principle.

---

## Key Concepts

### 1. Example: Counting

```c
while (x < n) x:= x + 1
```

**What is a good invariant?**
- There can be many different invariants
- For example, x = x or also x < x (or false)
- Depends on what we want to prove

### 2. Code with Postcondition

**Partial Hoare Triple**
```c
{ something }
	while (x < n) x:= x + 1
{x == n}
```

- Now we have a Postcondition, when we've proving something we have it at the back of our mind.

### 3. While Rule

$$
\frac{\{I \land x < n\}\; x := x + 1\; \{I\}}
{\{I\}\; \text{while }(x < n)\; x := x + 1\; \{I \land \lnot(x < n)\}}
$$

- From the conclusion of the while rule, we need to be able to infer the conclusion we are after.

### 4. Invariant Spec

1. For postcondition:  
   $I \land (x \ge n) \Rightarrow x = n$

2. For invariant:  
   $\{I \land (x < n)\}\; x := x + 1\; \{I\}$  

Both need to be valid (as implication and Hoare triple).

### 5. Candidate Invariants

| \(I\)                     | 1   | 2   |
| ------------------------- | --- | --- |
| $(I \equiv x = n)$        | ✓   | ✗   |
| $(I \equiv x \le n)$      | ✓   | ✓   |
| $(I \equiv \text{false})$ | ✓   | ✓   |

### 6. General Principle

**Counting Loops**

```c
{ <precond> }
var x := <something>
while (x < n) {
  -- do something
  x := x + 1
}
{ <postcond> }
```

**Counting Loop Invariant Principle**

In a loop like the one on the left:

- Often need \( x = n \) for \<postcond\>

**Counting Loop Invariant Principle:**  
- Add \( x \le n \) to the invariant

While rule conclusion (i.e. at end of loop):

- Have \(\lnot(x < n)\) from loop condition false  
- Have ( $x \le n$ ) from invariant  
- May conclude \( x = n \) as desired

---

## Notes

---

## Examples

> [!example] Counting Loop
> ```c
> { x <= n }
> while (x < n) {
>   x := x + 1
> }
> { x == n }
> ```
> The invariant $x \le n$ ensures we can conclude $x = n$ when the loop exits.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Loop Invariant | An assertion that holds before, during, and after loop execution |
| While Rule | Rule for reasoning about while loops using invariants |
| Counting Loop | A loop that increments a counter until a condition is met |
| Counting Loop Invariant Principle | For counting loops, often include $x \le n$ in the invariant |

---

## Questions & Discussion

- [ ] How do you find a good loop invariant?
- [ ] Why is $x = n$ not a valid invariant for the counting loop?
- [ ] How does the while rule work?
- [ ] What makes an invariant useful?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Practice finding loop invariants
- [ ] Work with while loop rules
- [ ] Understand the counting loop principle

---

## Related Notes

- [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Course Summary]]
- [[300 Computing/Theoretical Computer Science/Lectures/Week 09 - Lecture 1|Week 09 - Lecture 1]]

---

## References
