---
course: "[[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]"
type: tutorial
date: 2025-07-16
week: 1
session: 1
instructor: 
tags:
  - tutorial
  - theoretical-computer-science
  - propositional-logic
  - dafny
status: in-progress
---

# Week 01 - Tutorial 1

> [!info] Tutorial Details
> **Course:** [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]
> **Type:** Tutorial
> **Date:** Wednesday, 16 July 2025
> **Week:** 1
> **Tutorial #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Introduction to propositional logic and Dafny, covering boolean formula evaluation, logical equivalence, truth tables, and basic Dafny specifications with preconditions and postconditions.

---

## Key Concepts

### 1. Learning Goals

- Become familiar with **propositional formulae**  
- Construct **truth tables**  
- Understand **logical equivalence**  
- Use the **Dafny** tool to create simple program specifications  

_No submission is required for this tutorial._

### 2. Boolean-Formula Evaluation

Given the truth-value assignment  

$$
\sigma(p)=T,\qquad \sigma(q)=T,\qquad \sigma(r)=F
$$

determine which of the following formulae evaluate to **$T$** under $\sigma$.  
Use truth tables to justify your answers.

1. $(\lnot p \lor \lnot q)\;\lor\;\lnot(r \land q)$ 

2. $\lnot(\lnot p \lor \lnot q)\;\lor\;(p \lor \lnot r)$

3. $\lnot(p \lor \lnot q)\;\land\; r$  

4. $\lnot\bigl(p \lor (\lnot q \land r)\bigr)$

### 3. Logical Equivalence

For each pair of formulae below, decide (again by truth tables) whether they are **logically equivalent**.

1. $(p \land q) \;\lor\; (\lnot p \land \lnot q)$  
2. $\lnot p \;\lor\; q$  
3. $(p \lor \lnot q) \;\land\; (q \lor \lnot p)$  
4. $\lnot(p \lor q)$  
5. $(q \land p) \;\lor\; \lnot p$

### 4. Card Games ("Wason Selection Task")

A logician places **four cards** on the table.  
Each card has a **number** on one side and a **letter** on the other.  
You see: **E K 4 7** on the visible faces.

> **Claim:** "If a card has a *vowel* on one side, then it has an *even number* on the other."

How many cards must you turn over to test the claim?  
Which specific cards are they, and **why**?

### 5. Post-Conditions in Dafny

```c
function FindMax(x:int, y:int, z:int): int
  ensures FindMax(x,y,z) >= x &&
          FindMax(x,y,z) >= y &&
          FindMax(x,y,z) >= z
{
  if x > y && x > z then
    x
  else if y > x && y > z then
    y
  else
    z
}
```

1. Run it in Dafny.  
   - Is the `ensures` clause proved?  
   - If not, repair the function so the post-condition holds.

2. Is that post-condition **sufficient**?  
   - Write a function that satisfies the same `ensures` clause yet sometimes **fails to return the true maximum**.

3. Strengthen the post-condition so it uniquely characterises **"the maximum of the three integers."**

### 6. Pre-Conditions in Dafny

```c
function Multiply(x:int, y:int): int
{
  match y
    case 0 => 0
    case _ => x + Multiply(x, y - 1)
}
```

1. Add an `ensures` clause specifying the expected result and verify it.  
   - Does Dafny prove it?  
   - If not, decide whether the issue lies in the post-condition or the code.

2. Certain inputs lead to **undesired behaviour**.  
   - Identify those inputs.  
   - Without changing the code, add a `requires` clause that **rules out the invalid inputs**.

### 7. More Post-Conditions in Dafny

```c
function IsGreaterThan(x:int, y:int): bool
  ensures IsGreaterThan(x,y) ==> (x > y)
{
  // To do
}
```

1. Does the `ensures` clause fully capture the intent "return *true* **iff** $x > y$"?  
   - Implement the function so the current post-condition **passes** even when the function erroneously returns `false` for some $x > y$ cases.

2. Strengthen the post-condition so that your faulty implementation **fails**, thereby enforcing the correct behaviour.

---

## Notes

### Truth Tables

Truth tables for the boolean formula evaluation exercises are provided in the original content.

---

## Examples

> [!example] Truth Table Evaluation
> Given $\sigma(p)=T, \sigma(q)=T, \sigma(r)=F$:
> - Evaluate $(\lnot p \lor \lnot q)\;\lor\;\lnot(r \land q)$
> - Use truth tables to verify the result

> [!example] Dafny Postcondition
> ```c
> function FindMax(x:int, y:int, z:int): int
>   ensures FindMax(x,y,z) >= x &&
>           FindMax(x,y,z) >= y &&
>           FindMax(x,y,z) >= z
> ```

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Truth Table | A table showing all possible truth values for a logical formula |
| Logical Equivalence | Two formulas that have the same truth value for all assignments |
| Postcondition | An assertion that must hold after function execution |
| Precondition | An assertion that must hold before function execution |
| Wason Selection Task | A logic puzzle involving conditional statements |

---

## Questions & Discussion

- [ ] How do you construct a truth table?
- [ ] What makes two formulas logically equivalent?
- [ ] How do you strengthen a postcondition?
- [ ] What is the Wason selection task testing?

---

## Action Items

- [ ] Complete Exercise 1: Boolean-formula evaluation
- [ ] Complete Exercise 2: Logical equivalence
- [ ] Complete Exercise 3: Card games (Wason selection task)
- [ ] Complete Exercise 4: Post-conditions in Dafny
- [ ] Complete Exercise 5: Pre-conditions in Dafny
- [ ] Complete Exercise 6: More post-conditions in Dafny

---

## Related Notes

- [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Course Summary]]
- [[300 Computing/Theoretical Computer Science/Lectures/Week 01 - Lecture 1|Week 01 - Lecture 1]]

---

## References
