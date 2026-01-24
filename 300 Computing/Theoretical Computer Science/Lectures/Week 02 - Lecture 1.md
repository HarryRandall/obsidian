---
course: "[[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]"
type: lecture
date: 2025-07-28
week: 2
session: 1
instructor: 
tags:
  - lecture
  - theoretical-computer-science
  - predicate_logic
status: in-progress
---

# Week 02 - Lecture 1

> [!info] Lecture Details
> **Course:** [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]
> **Type:** Lecture
> **Date:** Monday, 28 July 2025
> **Week:** 2
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Continuation of propositional logic covering De Morgan's laws, variable assignments, and introduction to predicate logic with quantifiers ($\forall$, $\exists$), including their negation, order of quantifiers, and binding of variables.

---

## Key Concepts

### 1. De Morgan's Laws

- $\lnot (p \lor q) \equiv \lnot p \land \lnot q$  
- $\lnot (p \land q) \equiv \lnot p \lor \lnot q$  
- $\lnot (p \Rightarrow q) \equiv p \land \lnot q$

### 2. Other Laws

- $p \Rightarrow q \equiv \lnot p \lor q$  
- $q \land p \equiv p \land q$ (commutativity)  
- $\lnot \lnot p \equiv p$ (double negation)  
- $(p \land q) \land r \equiv p \land (q \land r)$ (associativity)  
- $(p \lor q) \lor r \equiv p \lor (q \lor r)$ (associativity)  
- $p \lor (q \land r) \equiv (p \lor q) \land (p \lor r)$ (distributive)  
- $p \land (q \lor r) \equiv (p \land q) \lor (p \land r)$ (distributive)

### 3. Variable Assignment

- A **variable assignment** is a mapping:  
  $\sigma: V \to \{True, False\}$  
- $\sigma \vDash p$ means the formula $p$ holds under assignment $\sigma$.

**Recursive definition:**  
- $True$ → always holds  
- $False$ → never holds  
- $\lnot p$ → holds if $p$ is false under $\sigma$  
- $p \lor q$ → holds if $p$ or $q$ true under $\sigma$  
- $p \land q$ → holds if both $p$ and $q$ true under $\sigma$  
- $p \Rightarrow q$ → holds if $p$ is false or $q$ is true

### 4. Expressive Completeness

- A set $S$ of connectives is **expressively complete** if all boolean functions can be expressed with $S$.

Examples:  
- $\{\land, \lor, \lnot, \Rightarrow, True, False\}$ → complete  
- $\{\lor, \lnot, True\}$ → complete  
- $\{\lor, \lnot\}$ → not complete  
- $\{\lor, True\}$ → not complete

### 5. Universal Quantifier ($\forall$)

- $\forall x \in S. P(x)$ means: for **all** $x$ in set $S$, $P(x)$ holds.

Examples:  
- $\forall v \in \{1,2,3,4\}. v^2 \geq v$ → true  
- $\forall v \in \mathbb{R}. v^2 \geq v$ → false (counterexample $v = 1/2$)

- To prove true: show it holds for all cases.  
- To prove false: give **one counterexample**.

### 6. Existential Quantifier ($\exists$)

- $\exists x \in S. P(x)$ means: there exists **some** $x \in S$ where $P(x)$ holds.

Examples:  
- $\exists n \in \mathbb{Z}. n^2 = n$ → true (solutions: $n=0,1$).  
- $\exists n \in \{2,3,4,5\}. n^2 = n$ → false (no solution).

- To prove true: find one case.  
- To prove false: show all cases fail.

### 7. Negation of Quantifiers

- $\lnot (\forall x \in S. P(x)) \equiv \exists x \in S. \lnot P(x)$  
- $\lnot (\exists x \in S. P(x)) \equiv \forall x \in S. \lnot P(x)$

Examples:  
- Negation of "All books are heavy" → "Some books are not heavy".  
- Negation of "There is a heavy book" → "All books are not heavy".

### 8. Conditional Universal Statements

- $\forall x \in S. P(x) \Rightarrow Q(x)$  
- Example: $\forall v \in \mathbb{Z}. v \geq 0 \Rightarrow v+v \geq v$  
  - The condition $v \geq 0$ ensures the property holds.

### 9. Vacuous Truth

- If there are no $x$ in $S$ that satisfy the condition, the statement holds **vacuously**.  
- Example: $\forall x \in S. P(x) \Rightarrow Q(x)$ holds if no $x$ makes $P(x)$ true.

### 10. Multiple Quantifiers

- $\forall x \in S. \exists y \in S. x > y$  
  - For every element, there exists another smaller element.  
- $\forall x \in S. \exists y \in S. x = y$  
  - Always true (can pick $y = x$).

Example:  
- $\forall s \in Students. \exists c \in Courses. enrolled(s,c)$  
  - Every student is enrolled in some course.  
- $\exists c \in Courses. \forall s \in Students. enrolled(s,c)$  
  - There is one course all students are enrolled in.

**Order of quantifiers matters!**

### 11. Binding of Variables

- Variables can be **free** or **bound**.  

Example:  
- $x+y > x^2$ → $x,y$ are free.  
- $\forall x. x+y > x^2$ → $x$ is bound, $y$ is free.  
- $(\forall x. x+y > x^2) \land (x > 2)$ → $x$ inside $\forall$ is bound, the last $x$ is free.

- Quantifiers bind variables.

### 12. Replacing Variables

- $(\exists x. A)[v/x] \equiv \exists x. A$  
- $(x=x \land \exists x. A)[v/x] \equiv v=v \land \exists x. A$

### 13. Renaming Bound Variables

- $\exists x. P(x)$ may or may not be equivalent to $\exists y. P(y)$ depending on whether $y$ appears free in $P$.

Example:  
- $P(a) = a+y=5$ over naturals.  
- $\exists x. P(x) \equiv \exists x. (x+y=5)$  
- $\exists y. P(y) \equiv \exists y. (y+y=5)$ (not equivalent).

### 14. Valid/Invalid Arguments

Examples:  
1. All CS students understand logic.  
   All maths lecturers understand logic.  
   Therefore, all CS students are maths lecturers. → Invalid.

2. No courses with small enrolments have a difficult final exam.  
   COMP1600 is a large course.  
   Therefore, COMP1600 has a difficult final exam. → Invalid.

3. There is a superhero with the secret identity Clark Kent.  
   Daredevil is a superhero.  
   Therefore, Daredevil is Clark Kent. → Invalid.

---

## Notes

### Logic Puzzle (Knights and Knaves)

- Knights always tell truth, knaves always lie.  
- A: "B is a knight."  
- B: "We are opposite types."

**Solution:**  
- Assume A is a knight → B is a knight → contradiction.  
- Therefore A is a knave → A is lying → B is not a knight → so B is a knave.  
- **Both are knaves.**

---

## Examples

> [!example] Universal Quantifier
> $\forall v \in \{1,2,3,4\}. v^2 \geq v$ is true because:
> - $1^2 = 1 \geq 1$ ✓
> - $2^2 = 4 \geq 2$ ✓
> - $3^2 = 9 \geq 3$ ✓
> - $4^2 = 16 \geq 4$ ✓

> [!example] Existential Quantifier
> $\exists n \in \mathbb{Z}. n^2 = n$ is true because:
> - For $n = 0$: $0^2 = 0$ ✓
> - For $n = 1$: $1^2 = 1$ ✓

> [!example] Order of Quantifiers Matters
> - $\forall s \in Students. \exists c \in Courses. enrolled(s,c)$  
>   Every student is enrolled in some course (different course per student).
> - $\exists c \in Courses. \forall s \in Students. enrolled(s,c)$  
>   There is one course all students are enrolled in (same course for all).

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Variable Assignment ($\sigma$) | A mapping from variables to truth values |
| Expressive Completeness | A set of connectives that can express all boolean functions |
| Universal Quantifier ($\forall$) | "For all" - statement holds for every element in the set |
| Existential Quantifier ($\exists$) | "There exists" - statement holds for at least one element |
| Vacuous Truth | A statement that is true because no cases satisfy the condition |
| Free Variable | A variable not bound by any quantifier |
| Bound Variable | A variable within the scope of a quantifier |
| De Morgan's Laws | Rules for negating conjunctions and disjunctions |

---

## Questions & Discussion

- [ ] How do De Morgan's laws apply to quantifiers?
- [ ] What is the difference between free and bound variables?
- [ ] Why does the order of quantifiers matter?
- [ ] What is vacuous truth and when does it occur?
- [ ] How do you negate statements with quantifiers?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Practice identifying free vs bound variables
- [ ] Work through examples of quantifier negation
- [ ] Understand the difference between $\forall \exists$ and $\exists \forall$

---

## Related Notes

- [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Course Summary]]
- [[300 Computing/Theoretical Computer Science/Lectures/Week 01 - Lecture 1|Week 01 - Lecture 1]]

---

## References
