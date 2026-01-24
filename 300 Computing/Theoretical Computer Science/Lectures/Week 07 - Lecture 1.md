---
course: "[[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]"
type: lecture
date: 2025-09-15
week: 7
session: 1
instructor: 
tags:
  - lecture
  - theoretical-computer-science
  - trees
  - structural-induction
status: in-progress
---

# Week 07 - Lecture 1

> [!info] Lecture Details
> **Course:** [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]
> **Type:** Lecture
> **Date:** Monday, 15 September 2025
> **Week:** 7
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Introduction to trees in Dafny, including recursive definitions and structural induction over trees. Covers tree datatypes, tree construction, and induction principles for trees.

---

## Key Concepts

### 1. Defining a Tree

- This is how we define a list in Dafny

![[Pasted image 20250923143205.png]]

- This is how we define a tree in Dafny

![[Pasted image 20250923143338.png]]

- The datatype Tree is of type \<T> which could be anything
- Emp is shorthand for an empty tree.

**Tree Example:**

- We can create the following subtree using the following code:
```c
Node(Emp, 217, Emp)
```
![[Pasted image 20250923143716.png]]

- We can add to this tree with the following code:
```c
Node(Node(Emp, 217, Emp), 7, Emp)
```

![[Pasted image 20250923143832.png]]

- Combining all of these elements together, we can create a large tree as follows:
![[Pasted image 20250923144001.png]]

### 2. Induction

#### Natural Number Induction
- To prove a property $P$ holds for all natural numbers:
**Base case**  
- Prove that $P(0)$ holds.
**Induction step**  
- Prove that for all $k \geq 0$, $P(k) \Rightarrow P(k+1)$.

#### List Induction
- To prove a property $P$ holds for all **lists**:
**Base case**  
- Prove that $P(\text{Nil})$ holds. 
**Induction step**  
- Prove that $\forall x, \forall xs.\; P(xs) \Rightarrow P(\text{Cons}(x, xs))$.

#### Tree Induction
- To prove a property $P$ holds for all **trees**:
**Base case**  
- Prove that $P(\text{Emp})$ holds.  
**Induction step**  
- Prove that $\forall l, \forall x, \forall r.\; P(l) \land P(r) \Rightarrow P(\text{Node}(l, x, r))$.

---

## Notes

### Lecture 2

### Lecture 3
All done in Dafny

---

## Examples

> [!example] Tree Construction
> ```c
> Node(Emp, 217, Emp)  // Single node tree
> Node(Node(Emp, 217, Emp), 7, Emp)  // Tree with left child
> ```

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Tree Datatype | Recursive data structure with nodes and empty trees |
| Emp | Empty tree constructor |
| Node | Tree node constructor with left subtree, value, and right subtree |
| Tree Induction | Induction principle for trees: base case on Emp, step case on Node |

---

## Questions & Discussion

- [ ] How does tree induction differ from list induction?
- [ ] Why do we need to prove properties for both left and right subtrees?
- [ ] How are trees represented recursively in Dafny?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Practice defining tree functions
- [ ] Work through tree induction proofs
- [ ] Understand tree datatype structure

---

## Related Notes

- [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Course Summary]]
- [[300 Computing/Theoretical Computer Science/Lectures/Week 06 - Lecture 1|Week 06 - Lecture 1]]

---

## References
