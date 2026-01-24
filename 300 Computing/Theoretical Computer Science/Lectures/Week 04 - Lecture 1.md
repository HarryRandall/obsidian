---
course: "[[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]"
type: lecture
date: 2025-09-02
week: 4
session: 1
instructor: 
tags:
  - lecture
  - theoretical-computer-science
  - induction
status: in-progress
---

# Week 04 - Lecture 1

> [!info] Lecture Details
> **Course:** [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]
> **Type:** Lecture
> **Date:** Tuesday, 2 September 2025
> **Week:** 4
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Introduction to mathematical induction covering the general principle, base cases, inductive steps, and examples including sum of integers, geometric sequences, and divisibility properties.

---

## Key Concepts

### 1. General Principle

To prove that a property $P$ holds for all integers $n \geq s$ (for some $s$):  
- Prove that $P(s)$ holds (base case).  
- Prove that $$\forall k \mid k \geq s,\; P(k) \Rightarrow P(k+1)$$ (inductive step).

Then $P$ holds for all integers $n \geq s$.

For natural numbers:  
- Show $P(0)$ holds.  
- Show $$\forall k \mid k \geq 0,\; P(k) \Rightarrow P(k+1)$$

### 2. How It Works

- If $P(0)$ holds and $$\forall k,\; P(k) \Rightarrow P(k+1)$$then:  
  - $P(0) \Rightarrow P(1)$  
  - $P(1) \Rightarrow P(2)$  
  - $P(2) \Rightarrow P(3)$  
  - etc.

Thus $P(n)$ holds for all $n \geq 0$.

### 3. Why Induction

- Proves that a property holds for all $n \geq s$ instead of proving each $n$ individually.  
- Can extend beyond numbers to other structures.

### 4. Example 1: Sum of Integers

Prove $$\forall n \geq 0,\; \sum_{i=0}^n i = \frac{n(n+1)}{2}$$

**Base case ($n=0$):**  
- LHS $=0$  
- RHS $=\frac{0(0+1)}{2}=0$  
- Holds.

**Inductive hypothesis:** Assume $$\sum_{i=0}^k i = \frac{k(k+1)}{2}$$

**Inductive step:**  
$$
\sum_{i=0}^{k+1} i = \left(\sum_{i=0}^k i \right) + (k+1)  
= \frac{k(k+1)}{2} + (k+1)  
= \frac{k(k+1) + 2(k+1)}{2}  
= \frac{(k+1)(k+2)}{2}  
$$

Therefore holds for $k+1$.

### 5. Importance of Base Case

Without a base case, induction fails.

**Incorrect example:** $$Q(i) \equiv i = i+1$$  
- Hypothesis: Assume $Q(k)$ holds.  
- Then $Q(k+1)$ would follow.  
- Wrong, because no valid base case exists.

### 6. Example 2: Sum of a Geometric Sequence

Prove $$\forall n \geq 0,\; \sum_{i=0}^n r^i = \frac{r^{n+1}-1}{r-1},\; r>1$$

**Base case ($n=0$):**  
- LHS $= r^0=1$  
- RHS $= \frac{r^{0+1}-1}{r-1} = \frac{r-1}{r-1}=1$

**Inductive hypothesis:** Assume $$\sum_{i=0}^k r^i = \frac{r^{k+1}-1}{r-1}$$

**Inductive step:**  
$$
\sum_{i=0}^{k+1} r^i = \left(\sum_{i=0}^k r^i\right) + r^{k+1}  
= \frac{r^{k+1}-1}{r-1} + r^{k+1}  
= \frac{r^{k+1}-1+(r-1)r^{k+1}}{r-1}  
= \frac{r^{k+2}-1}{r-1}  
$$

Therefore holds for $k+1$.

### 7. Example 3: Divisibility

Prove $$\forall n \geq 1,\; 4^n-1$$ is divisible by 3.

**Base case ($n=1$):**  
- $4^1 - 1 = 3$ divisible by 3.

**Inductive hypothesis:** Assume $4^k - 1$ divisible by 3.

**Inductive step:**  
$$
\text{LHS} = 4^{(k+1)} - 1
$$
$$
= 4^k \cdot 4^1 - 1
$$
$$
= 4^k \cdot (3 + 1)^1 - 1
$$
$$
= 4^k \cdot (3 + 1) - 1
$$
$$
= 4^k \times 3 + 4^k - 1
$$

which is divisible by 3.

### 8. Example: Properties over Sigma

Definition of sigma notation:  
$$
\sum_{i=m}^n a_i = a_m + a_{m+1} + a_{m+2} + \dots + a_n
$$

Recursive definition:  
$$
\sum_{i=m}^n a_i =
\begin{cases}
0, & m > n \\
\sum_{i=m}^{n-1} a_i + a_n, & m \leq n
\end{cases}
$$

We want to prove:  
$$
\sum_{i=m}^n (a_i + b_i) = \sum_{i=m}^n a_i + \sum_{i=m}^n b_i
$$

**Base Case ($n = m-1$)**  
- LHS $=0$  
- RHS $=0+0=0$  
- Holds.

**Inductive Hypothesis**  
Assume it holds for $n=k$:  
$$
\sum_{i=m}^k (a_i+b_i) = \sum_{i=m}^k a_i + \sum_{i=m}^k b_i
$$

**Inductive Step**  
Prove it for $n=k+1$:  
$$
\sum_{i=m}^{k+1} (a_i+b_i) = \sum_{i=m}^{k} (a_i+b_i) + (a_{k+1}+b_{k+1})
$$

By IH:  
$$
= \left(\sum_{i=m}^k a_i + \sum_{i=m}^k b_i\right) + (a_{k+1}+b_{k+1})
= \sum_{i=m}^{k+1} a_i + \sum_{i=m}^{k+1} b_i
$$

Therefore the property holds.

### 9. Example: Finding the Pattern

Observe:  
- $1 = 1$  
- $1-4 = -(1+2)$  
- $1-4+9 = (1+2+3)$  
- $1-4+9-16 = -(1+2+3+4)$  
- $1-4+9-16+25 = (1+2+3+4+5)$

**General Formula**  
LHS:  
$$
\sum_{i=1}^n \big( (-1)^{i-1} \cdot i^2 \big)
$$

RHS:  
$$
(-1)^{n-1} \sum_{i=1}^n i
$$

**Base Case ($n=1$)**  
LHS $= 1^2 = 1$  
RHS $= (-1)^{0}\cdot 1 = 1$  
Holds.

**Inductive Hypothesis**  
Assume for $n=k$:  
$$
\sum_{i=1}^k \big( (-1)^{i-1} i^2 \big) = (-1)^{k-1} \sum_{i=1}^k i
$$

**Inductive Step**  
For $n=k+1$:  
$$
\sum_{i=1}^{k+1} \big( (-1)^{i-1} i^2 \big) =
\left( \sum_{i=1}^k (-1)^{i-1} i^2 \right) + (-1)^k (k+1)^2
$$

By IH:  
$$
= (-1)^{k-1} \sum_{i=1}^k i + (-1)^k (k+1)^2
$$

Now use the identity:  
$$
\sum_{i=1}^k i = \frac{k(k+1)}{2}
$$

So:  
$$
= (-1)^{k-1}\cdot \frac{k(k+1)}{2} + (-1)^k (k+1)^2
$$

Factorising:  
$$
= (-1)^{k-1}\left( \frac{k(k+1)}{2} - (k+1)^2 \right)
$$  
$$
= (-1)^{k-1}\left( \frac{k^2+k - 2k^2 -4k -2}{2} \right)
= (-1)^{k-1}\left( \frac{-k^2 - 3k - 2}{2} \right)
$$  
$$
= (-1)^{k+1-1} \cdot \frac{(k+1)(k+2)}{2}
$$

Which equals:  
$$
(-1)^{(k+1)-1} \sum_{i=1}^{k+1} i
$$  
Thus the property holds.

---

## Notes

---

## Examples

> [!example] Sum of Integers
> Prove $\sum_{i=0}^n i = \frac{n(n+1)}{2}$ for all $n \geq 0$:
> - Base case: $n=0$ gives $0 = \frac{0(1)}{2} = 0$ ✓
> - Inductive step: Assume true for $k$, then show for $k+1$

> [!example] Geometric Sequence
> Prove $\sum_{i=0}^n r^i = \frac{r^{n+1}-1}{r-1}$ for $r>1$:
> - Base case: $n=0$ gives $1 = \frac{r-1}{r-1} = 1$ ✓
> - Inductive step uses the hypothesis to show the formula holds for $k+1$

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Mathematical Induction | A proof technique to show a property holds for all natural numbers |
| Base Case | The initial case that establishes the property for the smallest value |
| Inductive Hypothesis | The assumption that the property holds for $k$ |
| Inductive Step | Proving the property for $k+1$ using the inductive hypothesis |
| Sigma Notation ($\sum$) | Summation notation for adding sequences of terms |

---

## Questions & Discussion

- [ ] Why is the base case essential in mathematical induction?
- [ ] How do you choose the base case for a given property?
- [ ] What happens if you skip the inductive step?
- [ ] How does induction extend to other mathematical structures?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Practice writing inductive proofs
- [ ] Work through examples of sigma notation
- [ ] Understand the structure of base case and inductive step

---

## Related Notes

- [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Course Summary]]
- [[300 Computing/Theoretical Computer Science/Lectures/Week 03 - Lecture 1|Week 03 - Lecture 1]]

---

## References
