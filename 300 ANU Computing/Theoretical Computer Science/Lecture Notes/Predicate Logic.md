**Class**: [[COMP1600 - Theoretical Computer Science]]
**Date**: Monday, 28 July 2025, 20:37
**Tags**: #predicate_logic

---
### Week 2 Notes

### Key Takeaways (Week 2)
- De Morgan’s laws, distributive/commutative/associative properties simplify formulas.  
- Variable assignments define truth systematically.  
- Quantifiers ($\forall$, $\exists$) express statements about sets.  
- Negation switches quantifier type.  
- Order of quantifiers matters.  
- Vacuous truth occurs when no cases exist for a condition.  
- Distinction between bound and free variables is essential.  
- Valid arguments must preserve truth; many “natural” arguments are invalid.  
- Logic puzzles reinforce rigorous reasoning.  

---

#### Lecture 4 — Propositional Logic: Laws and Variable Assignments

##### De Morgan’s Laws
- $\lnot (p \lor q) \equiv \lnot p \land \lnot q$  
- $\lnot (p \land q) \equiv \lnot p \lor \lnot q$  
- $\lnot (p \Rightarrow q) \equiv p \land \lnot q$  

##### Other Laws
- $p \Rightarrow q \equiv \lnot p \lor q$  
- $q \land p \equiv p \land q$ (commutativity)  
- $\lnot \lnot p \equiv p$ (double negation)  
- $(p \land q) \land r \equiv p \land (q \land r)$ (associativity)  
- $(p \lor q) \lor r \equiv p \lor (q \lor r)$ (associativity)  
- $p \lor (q \land r) \equiv (p \lor q) \land (p \lor r)$ (distributive)  
- $p \land (q \lor r) \equiv (p \land q) \lor (p \land r)$ (distributive)  

---

##### Variable Assignment
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

---

##### Expressive Completeness
- A set $S$ of connectives is **expressively complete** if all boolean functions can be expressed with $S$.  
- Examples:  
  - $\{\land, \lor, \lnot, \Rightarrow, True, False\}$ → complete  
  - $\{\lor, \lnot, True\}$ → complete  
  - $\{\lor, \lnot\}$ → not complete  
  - $\{\lor, True\}$ → not complete  

---

#### Lecture 5 — Predicate Logic: Quantifiers

##### Universal Quantifier ($\forall$)
- $\forall x \in S. P(x)$ means: for **all** $x$ in set $S$, $P(x)$ holds.  

Examples:  
- $\forall v \in \{1,2,3,4\}. v^2 \geq v$ → true  
- $\forall v \in \mathbb{R}. v^2 \geq v$ → false (counterexample $v = 1/2$)  

- To prove true: show it holds for all cases.  
- To prove false: give **one counterexample**.  

---

##### Existential Quantifier ($\exists$)
- $\exists x \in S. P(x)$ means: there exists **some** $x \in S$ where $P(x)$ holds.  

Examples:  
- $\exists n \in \mathbb{Z}. n^2 = n$ → true (solutions: $n=0,1$).  
- $\exists n \in \{2,3,4,5\}. n^2 = n$ → false (no solution).  

- To prove true: find one case.  
- To prove false: show all cases fail.  

---

##### Negation of Quantifiers
- $\lnot (\forall x \in S. P(x)) \equiv \exists x \in S. \lnot P(x)$  
- $\lnot (\exists x \in S. P(x)) \equiv \forall x \in S. \lnot P(x)$  

Examples:  
- Negation of "All books are heavy" → "Some books are not heavy".  
- Negation of "There is a heavy book" → "All books are not heavy".  

---

##### Conditional Universal Statements
- $\forall x \in S. P(x) \Rightarrow Q(x)$  
- Example: $\forall v \in \mathbb{Z}. v \geq 0 \Rightarrow v+v \geq v$  
  - The condition $v \geq 0$ ensures the property holds.  

---

##### Vacuous Truth
- If there are no $x$ in $S$ that satisfy the condition, the statement holds **vacuously**.  
- Example: $\forall x \in S. P(x) \Rightarrow Q(x)$ holds if no $x$ makes $P(x)$ true.  

---

#### Lecture 6 — Multiple Quantifiers & Arguments

##### Multiple Quantifiers
- $\forall x \in S. \exists y \in S. x > y$  
  - For every element, there exists another smaller element.  
- $\forall x \in S. \exists y \in S. x = y$  
  - Always true (can pick $y = x$).  

- Example:  
  - $\forall s \in Students. \exists c \in Courses. enrolled(s,c)$  
    - Every student is enrolled in some course.  
  - $\exists c \in Courses. \forall s \in Students. enrolled(s,c)$  
    - There is one course all students are enrolled in.  

**Order of quantifiers matters!**  

---

##### Logic Puzzle (Knights and Knaves)
- Knights always tell truth, knaves always lie.  
- A: “B is a knight.”  
- B: “We are opposite types.”  

**Solution:**  
- Assume A is a knight → B is a knight → contradiction.  
- Therefore A is a knave → A is lying → B is not a knight → so B is a knave.  
- **Both are knaves.**  

---

##### Binding of Variables
- Variables can be **free** or **bound**.  
- Example:  
  - $x+y > x^2$ → $x,y$ are free.  
  - $\forall x. x+y > x^2$ → $x$ is bound, $y$ is free.  
  - $(\forall x. x+y > x^2) \land (x > 2)$ → $x$ inside $\forall$ is bound, the last $x$ is free.  

- Quantifiers bind variables.  

---

##### Replacing Variables
- $(\exists x. A)[v/x] \equiv \exists x. A$  
- $(x=x \land \exists x. A)[v/x] \equiv v=v \land \exists x. A$  

---

##### Renaming Bound Variables
- $\exists x. P(x)$ may or may not be equivalent to $\exists y. P(y)$ depending on whether $y$ appears free in $P$.  

Example:  
- $P(a) = a+y=5$ over naturals.  
- $\exists x. P(x) \equiv \exists x. (x+y=5)$  
- $\exists y. P(y) \equiv \exists y. (y+y=5)$ (not equivalent).  

---

##### Valid/Invalid Arguments
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


