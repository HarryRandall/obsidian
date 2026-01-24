---
course: "[[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]"
type: lecture
date: 2025-07-21
week: 1
session: 1
instructor: 
tags:
  - lecture
  - theoretical-computer-science
  - dafny
  - propositional_logic
status: in-progress
---

# Week 01 - Lecture 1

> [!info] Lecture Details
> **Course:** [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]
> **Type:** Lecture
> **Date:** Monday, 21 July 2025
> **Week:** 1
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Introduction to program verification and formal methods, covering why verification is important, introduction to Dafny as a verification tool, and foundations of propositional logic including logical connectives, truth tables, and rules of inference.

---

## Key Concepts

### 1. Verification

Programs have bugs. We need a way of ensuring that a program is correct according to its **specification**.

- **Why is this important?**
  - Safety-critical systems (cars, airplanes)
  - Financial systems
  - Energy systems
- **What problems could it cause?**
  - Danger to people
  - Financial loss
  - Loss of critical infrastructure

> [!example] Example 1: Ariane 5 Rocket
> Exploded due to a software bug.

> [!example] Example 2: The DAO (Ethereum, 2016)
> A decentralised autonomous organisation launched on the Ethereum blockchain.  
> Raised $150 million USD worth of ETH.  
> Hacked due to vulnerabilities in its code base.  
> Ethereum now uses **Hoare-style logic** to prevent similar failures.

> [!example] Example 3: Needham–Schroeder Public Key Protocol
> In use for 17 years before a flaw was found using **formal methods**.  
> Security risk: attackers could access encrypted information.  
> Flaw was discovered using **model checking**.

> **Why not just test a program?**
> - **Testing** → explores *some* execution paths.  
> - **Verification** → proves correctness for *all* paths.

### 2. Dafny Verification Tool

In this course we use **Dafny**, a verification tool, to:
- Write specifications
- State preconditions and postconditions
- Prove programs satisfy their specifications

**Correct implementation**
```c
function Triple1(x:int): int {
  x * 3
}
```

**Alternative correct implementation**
```c
function Double(x:int): int {
  x + x
}

function Triple2(x:int): int {
  Double(x) + x
}
```

**Incorrect implementation**
```c
function TripleBroken(x:int): int {
  Double(x)   // Only doubles, not triples
}
```
- May appear to work for some cases (e.g. `x = 0`), but fails in general.  
- Shows why testing alone is not enough.

### 3. Preconditions & Postconditions

- **Precondition**: must hold *before* program starts.  
- **Postcondition**: must hold *after* program finishes.

**Example (with postcondition)**
```c
function Increase2(x:int): int 
  ensures Increase2(x) > x {
    x + 1
}
```
- `ensures` clause defines what must be true at the end.

If Dafny reports:  
*A postcondition could not be proved on this return path* → means it does not hold for all possible inputs.

**Adding Preconditions**
We can restrict valid inputs with a **requires** clause.

```c
function Increase(x:int, y:int): int 
  requires y >= 0
  ensures Increase(x,y) > x {
    x + y
}
```

- `requires` → precondition (must hold before execution).  
- `ensures` → postcondition (must hold after execution).

### 4. Propositions

- A **proposition** is a statement that is either **true** or **false**.

Examples:  
- The sky is blue.  
- The sun is hot.  
- Canberra is in Australia.  
- Australia is in the Northern Hemisphere.  
- Kryptonite does not affect Clark Kent.

### 5. Logical Connectives

1. **Negation ($\lnot$)**  
   - Example: Let $p =$ "It is raining now".  
   - Then $\lnot p =$ "It is not raining now".  
   - Negation flips the truth value.

2. **Conjunction ($\land$)**  
   - Example: $p =$ "My hat is green", $q =$ "My scarf is yellow".  
   - $p \land q =$ "My hat is green **and** my scarf is yellow".

3. **Disjunction ($\lor$)**  
   - Example: $p =$ "I will play tennis today", $q =$ "I will watch a movie today".  
   - $p \lor q =$ "I will play tennis today **or** I will watch a movie today".  
   - Inclusive "or": true if at least one is true.

4. **Implication ($\Rightarrow$)**  
   - Example: $p =$ "It is raining today", $q =$ "I will stay at home".  
   - $p \Rightarrow q =$ "If it is raining today, then I will stay at home".  
   - **Rule:** If $p$ is false, the implication is always true.

5. **Biconditional ($\iff$)**  
   - "If and only if".  
   - Combines both $p \Rightarrow q$ and $q \Rightarrow p$.

Example:  
- $p =$ "I can swim", $q =$ "I can reach the island".  
- $p \iff q =$ "I can reach the island **if and only if** I can swim".

### 6. Operator Precedence

- Example: $p \land q \lor r$  
  - Means $(p \land q) \lor r$ (since $\land$ binds stronger than $\lor$).

- General precedence (strongest → weakest):  
$$\lnot \succ \land \succ \lor \succ \Rightarrow$$

**Algorithm for parsing:**  
1. Find the lowest-precedence operator.  
2. Group around it.  
3. Repeat recursively.

**Example:**  
Formula: $p \lor q \land r \Rightarrow s \Rightarrow t$

1. $p \lor q \land r \Rightarrow (s \Rightarrow t)$  
2. $(p \lor q) \land r \Rightarrow (s \Rightarrow t)$  
3. $(p \lor (q \land r)) \Rightarrow (s \Rightarrow t)$

### 7. Converse & Inverse

- Given $p \Rightarrow q$:  
  - **Converse:** $q \Rightarrow p$  
  - **Inverse:** $\lnot p \Rightarrow \lnot q$  
  - **Contrapositive:** $\lnot q \Rightarrow \lnot p$ (equivalent to original)

### 8. Tautologies, Contradictions, Contingencies

- **Tautology:** always true (all rows in truth table = T).  
- **Contradiction:** always false.  
- **Contingency:** sometimes true, sometimes false.

### 9. Rules of Inference

- **Modus Ponens (MP):** $p \Rightarrow q$, $p$ ⟹ $q$  
- **Modus Tollens (MT):** $p \Rightarrow q$, $\lnot q$ ⟹ $\lnot p$  
- **Hypothetical Syllogism (HS):** $p \Rightarrow q$, $q \Rightarrow r$ ⟹ $p \Rightarrow r$  
- **Disjunctive Syllogism (DS):** $p \lor q$, $\lnot p$ ⟹ $q$  
- **Disjunctive Addition:** $p$ ⟹ $p \lor q$  
- **Conjunctive Simplification:** $p \land q$ ⟹ $p$ (or $q$)  
- **Dilemma:** $(p \lor q)$, $(p \Rightarrow r)$, $(q \Rightarrow r)$ ⟹ $r$

---

## Notes

### Truth Tables

**Negation:**
| p | $\lnot p$ |
|---|-----------|
| T | F         |
| F | T         |

**Conjunction:**
| p | q | $p \land q$ |
|---|---|-------------|
| T | T | T           |
| T | F | F           |
| F | T | F           |
| F | F | F           |

**Disjunction:**
| p | q | $p \lor q$ |
|---|---|------------|
| T | T | T          |
| T | F | T          |
| F | T | T          |
| F | F | F          |

**Implication:**
| p | q | $p \Rightarrow q$ |
|---|---|-------------------|
| T | T | T                 |
| T | F | F                 |
| F | T | T                 |
| F | F | T                 |

**Biconditional:**
| p | q | $p \iff q$ |
|---|---|------------|
| T | T | T          |
| T | F | F          |
| F | T | F          |
| F | F | T          |

### Example: Tautology Proof

Show that $(p \Rightarrow q) \iff (\lnot q \Rightarrow \lnot p)$ is a tautology.

| p | q | $\lnot p$ | $\lnot q$ | $p \Rightarrow q$ | $\lnot q \Rightarrow \lnot p$ | Equivalence |
|---|---|-----------|-----------|-------------------|-------------------------------|-------------|
| T | T | F         | F         | T                 | T                             | T           |
| T | F | F         | T         | F                 | F                             | T           |
| F | T | T         | F         | T                 | T                             | T           |
| F | F | T         | T         | T                 | T                             | T           |

### Logic Puzzle

Clues:  
1. $Lake \Rightarrow \lnot Kitchen$  
2. $Elm \Rightarrow Kitchen$  
3. $Lake$ is true.  
4. $Elm \lor Flagpole$  
5. $Oak \Rightarrow Garage$

In Dafny:  
```c
lemma treasure(lake:bool, kitchen:bool, elm:bool, flagpole:bool, oak:bool, garage:bool)
  requires (lake ==> !kitchen)
  requires (elm ==> kitchen)
  requires lake
  requires (elm || flagpole)
  requires (oak ==> garage)
{
}
```

---

## Examples

> [!example] Dafny Function Examples
> **Correct implementation:**
> ```c
> function Triple1(x:int): int {
>   x * 3
> }
> ```
> 
> **Alternative correct implementation:**
> ```c
> function Double(x:int): int {
>   x + x
> }
> 
> function Triple2(x:int): int {
>   Double(x) + x
> }
> ```
> 
> **Incorrect implementation:**
> ```c
> function TripleBroken(x:int): int {
>   Double(x)   // Only doubles, not triples
> }
> ```

> [!example] Precondition and Postcondition
> ```c
> function Increase(x:int, y:int): int 
>   requires y >= 0
>   ensures Increase(x,y) > x {
>     x + y
> }
> ```

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Proposition | A statement that is either true or false |
| Negation ($\lnot$) | Logical connective that flips the truth value |
| Conjunction ($\land$) | Logical "and" - true only when both operands are true |
| Disjunction ($\lor$) | Logical "or" - true when at least one operand is true |
| Implication ($\Rightarrow$) | "If-then" - false only when premise is true and conclusion is false |
| Biconditional ($\iff$) | "If and only if" - true when both sides have the same truth value |
| Tautology | A formula that is always true |
| Contradiction | A formula that is always false |
| Contingency | A formula that is sometimes true, sometimes false |
| Precondition | An assertion that must hold before program execution |
| Postcondition | An assertion that must hold after program execution |
| Modus Ponens | Inference rule: $p \Rightarrow q$, $p$ ⟹ $q$ |
| Modus Tollens | Inference rule: $p \Rightarrow q$, $\lnot q$ ⟹ $\lnot p$ |
| Contrapositive | $\lnot q \Rightarrow \lnot p$ is equivalent to $p \Rightarrow q$ |

---

## Questions & Discussion

- [ ] Why is verification important for safety-critical systems?
- [ ] What is the difference between testing and verification?
- [ ] How do preconditions and postconditions help ensure program correctness?
- [ ] What are the truth values for implication when the premise is false?
- [ ] How does operator precedence affect formula parsing?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Practice writing Dafny functions with preconditions and postconditions
- [ ] Work through truth tables for logical connectives
- [ ] Understand the difference between converse, inverse, and contrapositive

---

## Related Notes

- [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Course Summary]]

---

## References
