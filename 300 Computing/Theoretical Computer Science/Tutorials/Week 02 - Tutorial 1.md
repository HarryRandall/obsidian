---
course: "[[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]"
type: tutorial
date: 2025-07-30
week: 2
session: 1
instructor: 
tags:
  - tutorial
  - theoretical-computer-science
  - predicate-logic
  - proofs
status: in-progress
---

# Week 02 - Tutorial 1

> [!info] Tutorial Details
> **Course:** [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]
> **Type:** Tutorial
> **Date:** Wednesday, 30 July 2025
> **Week:** 2
> **Tutorial #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Practice with predicate logic, formalization, proofs in Dafny, and Knights and Knaves puzzles with treasure. Covers free and bound variables, quantifiers, and logical reasoning.

---

## Key Concepts

### 1. Exercise 1: Dessert

Consider the following incomplete lemma:

```c
lemma Dessert(p: bool, q: bool, r: bool, s: bool)
  ensures (p ==> r) {
}
```

There is a dessert on the table.  
Let $p$ represent that the dessert is a mud cake.  
Let $q$ represent that the dessert contains chocolate.  
Let $r$ represent that the dessert is tasty.  
Let $s$ represent that the dessert has raspberry filling.  

We want to conclude that if the dessert is a mud cake, then it is tasty, represented by the `ensures` clause above.  
However, we only know the following facts:

- If the dessert contains chocolate, then it is tasty.
- If the dessert has raspberry filling, then it is a mud cake $\lor$ it is tasty.
- If the dessert is a mud cake, then it has raspberry filling.
- If the dessert is a mud cake, then it contains chocolate.

### 2. Exercise 2: Weather

Consider the following incomplete lemma:

```c
lemma Weather(p: bool, q: bool, r: bool, s: bool)
  ensures (!p) {
}
```

Let $p$ represent that it is winter.  
Let $q$ represent that the weather is cold.  
Let $r$ represent that it is snowing.  
Let $s$ represent that there is frost.  

We want to conclude that the weather is not winter, represented by the `ensures` clause above.  
However, we only know the following facts:

- If it is snowing, then it is winter.
- There is no frost.
- If it is winter, then the weather is cold.
- If there is no frost, then the weather is not cold.

### 3. Exercise 3: Mystery Mansion (MA, 6+4 credits)

During a dinner party, a guest, Mina, realises that her valuable necklace has been stolen. Work out who stole the necklace, given the following clues:

- If Lucy stole the necklace, then the necklace was made only of gold.
- The necklace was a family heirloom.
- The necklace was in the library $\lor$ Lucy was wearing a green dress.
- If the necklace was a family heirloom, then it was made only of silver $\lor$ Jonathan stole it.
- If Lucy was wearing a green dress, then the necklace was made only of silver.
- If Mina was wearing a red dress, then Jonathan stole the necklace.
- The dinner party was held in a mansion and Lucy was not wearing a blue dress.
- If Lucy did not steal the necklace, then Mina was wearing a red dress.
- If the necklace was in the library, then it was made only of silver.

### 4. Exercise 4: Boolean Formulae Evaluation

This exercise is to be completed by hand, not with Dafny.  
For each of the following, either prove that the argument is valid or give a counterexample to show that it is invalid.

(a)  
$$
p \Rightarrow q ,\
q \Rightarrow p \
\therefore p \lor q
$$

(b)  
$$
p ,\
p \Rightarrow q ,\
\lnot q \lor r \
\therefore r
$$

(c)  
$$
p \lor q \\
p \Rightarrow \lnot q \\
p \Rightarrow r \\
\therefore r
$$

(d)  
$$
p \land \lnot q \Rightarrow r \\
p \lor q \\
q \Rightarrow p \\
\therefore r
$$

---

## Notes

### Exercise 1 Solution

```c
lemma Dessert(p: bool, q: bool, r: bool, s: bool)
ensures (p ==> r)
requires (q ==> r)
// requires (s ==> p || r)
// requires (p ==> s)
requires (p ==> q)
{
}
```

Logical argument:
- $p$ (mudcake) is $r$ (tasty) is what we're after.
- $q$ (chocolate) means $r$ (tasty)
- $p$ (mudcake) is $q$ (chocolate)

So we have $p \Rightarrow q$ and then $(q \Rightarrow r)$ which we can rewrite as $(p \Rightarrow r)$, which matches the original statement $(p \Rightarrow r)$.

---

## Examples

> [!example] Dessert Problem
> Use logical reasoning to determine which facts are necessary to prove that mud cake implies tasty.

> [!example] Weather Problem
> Use the given facts to prove that it is not winter.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Logical Argument | A sequence of statements leading to a conclusion |
| Valid Argument | An argument where the conclusion follows from the premises |
| Invalid Argument | An argument where the conclusion does not follow |
| Counterexample | An example that shows an argument is invalid |

---

## Questions & Discussion

- [ ] How do you determine which facts are necessary for a proof?
- [ ] What makes a logical argument valid?
- [ ] How do you find counterexamples?

---

## Action Items

- [ ] Complete Exercise 1: Dessert
- [ ] Complete Exercise 2: Weather
- [ ] Complete Exercise 3: Mystery Mansion (MA)
- [ ] Complete Exercise 4: Boolean formulae evaluation

---

## Related Notes

- [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Course Summary]]
- [[300 Computing/Theoretical Computer Science/Lectures/Week 02 - Lecture 1|Week 02 - Lecture 1]]

---

## References
