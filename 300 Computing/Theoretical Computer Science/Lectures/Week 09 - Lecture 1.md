---
course: "[[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]"
type: lecture
date: 2025-10-01
week: 9
session: 1
instructor: 
tags:
  - lecture
  - theoretical-computer-science
  - hoare-triples
  - imperative-programs
status: in-progress
---

# Week 09 - Lecture 1

> [!info] Lecture Details
> **Course:** [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]
> **Type:** Lecture
> **Date:** Wednesday, 1 October 2025
> **Week:** 9
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Introduction to Hoare triples for verifying imperative programs. Covers program states, preconditions, postconditions, assignment axioms, and rules for if-statements. Discusses partial correctness and the structure of imperative programs.

---

## Key Concepts

### 1. Imperative Programs

- We are now working with only imperative programs.
- This means that we have variables, that change.

```c
while (x != 0) {z:= z + y; z:= x-1;}
```

- This program manipulates states.
- Functional programs never have any states because they don't have any variables.
- The program state is given by the value of the variables.

For the example above, let's say we have:
- x = 1
- y = 12
- z = -5

- These values are a relevant description of the state.
- Once we have a state, we can look at the program before and after execution.

**Different States**

This is the pre-state

```c
while (x != 0) {z:= z + y; z:= x-1;}
```

This is the post state

### 2. Hoare Triples

A Hoare triple is an expression of form {$P$} $S$ {$Q$} where
- $P$ is the precondition, an assertion state that is expected to hold before execution.
- $Q$ is postcondition, an assertion that is expected to hold after execution
- $S$ is a sequence of statements in a programming language
- $P$ and $Q$ are formulae of predicate logic that involve the program variables.

**Example**
```c
while (x != 0) {z:= z + y; z:= x-1;}
```

**Questions**
- What does this program compute?
- How can we describe it? $z = x \times y$?

- This program when random variables doesn't computer $x \times y$, as $z$ could be a random variable. To fix this, we can set $z$ to 0 in the precondition, and that will complete the formula.
- If there are other problems, we can fix the pre-condition or the assignment.

**Notation**
- We use = for equality: x = y is a *formula*
- We use := for assignment: x := y is a *command*

### 3. Truth of Hoare Triples

The Hoare triple $\{P\}\; S \;\{Q\}$ is *valid* if  

- whenever we run the program $S$ in a state that satisfies the precondition $P$  
- and the program $S$ terminates, only then the post-state satisfies $Q$.  
- This is called 'partial correctness', which means:
	- Precondition + Termination => Postcondition

**Examples**
Which of the following Hoare Triples is valid?

- $\{P\}\; x := 5 \;\{x = 5\}$ 
	- If we assign 5 to $x$, then the value of $x$ would be 5.
	- If this were to be incorrect, then something would be wrong with our understanding of programs.

- $\{x = v\}\; \text{if }(x < 0)\;\text{then } x := -x \;\{x > 0\}$ 
	- The precondition is slightly funny, $x = v$, and the $v$ in the precondition stands for variable.
		- In order to fix the program, we can either fix the program, or we can change the condition.
		- This is a way to change the condition.
	- The program is basically making sure that $x$ is a positive value.
	- For the values of $(0,0)$ for $x$ and $v$, this holds the precondition.
	- We don't branch as $x \nleq 0$
	- Therefore, we assert in the postcondition that $x > 0$ which isn't true.
	- Thus this is an invalid Hoare Triple.

- $\{\bot\}\; x := 12 \;\{x = 7\}$  
	- The precondition is just false. This is a perfectly legitimacy formula.
	- We could just replace this with z = 5, and z = -5, which is semantically false.
	- Precondition + termination => postcondition
	- Precondition = False
	- False => something
	- That's always true
	- This means that the formula is valid.

- $\{\bot\}\; \text{if }(x < 0)\;\text{then } x := -x \;\{P\}$
	- This by the same argument as before, will be valid.

- $\{P\}\; \text{while }(x < 0)\; x := x - 1 \;\{P\}$
	- The precondition is undefined
	- If $x$ is $< 0$, then the while loop in non-terminating.
	- If $x > 0$ then we have the same value, nothing changes.
	- As there is no counter example, this is valid.

### 4. What are Programs?

- In a Hoare triple {P} program {S}, what are the programs?

**Simple Imperative Language**
- Assignment **x := e**
	- Where **x** is a variable, and **e** is an expression built from variables and arithmetic that returns a number
	- Examples:
		- 2 + 3
		- $x \times y + 1 \dots$
- Sequencing **$S_1;S_2$**
- Conditional **if b then $S_1$ else $S_2$**
	- where $b$ is an expression built from variables arithmetic and logic that returns a Boolean (true or false).
	- Examples
		- $y < 0$
		- $x \neq y \land z = 0 \dots$ 
- While **b do s**

### 5. Assignment Axiom in Dafny

```c
lemma assignment_example ()
{
    // setup so that Dafny accepts the first assert
    var x, y: int := *, *;
    assume {:axiom} (y * y + y >= 42);

    // assignment axiom in Dafny.
    // the two asserts before and after the assignment
    // are the pre- and postcondition.
    // asserts before and after the assignment
    assert (y * y + y >= 42); //precondition x + y >= 42 [x \ y * y]
							  // = y * y + y >= 42
    x := y * y;
    assert (x + y >= 42); //postcondition: x + y >= 42
}
```

### 6. Precondition Strengthening

```c
lemma precond_strengthen_example ()
{
    // setup for first assert
    var x, y: int := *, *;
    assume {:axiom} (y * y + y >= 42);

    assert (y * y + y == 42);  // first assert is stronger and
    assert (y * y + y >= 42);  // implies the second
    x := y * y;
    assert (x + y >= 42);
}
```

### 7. Pre-Postcondition Rules

**Postcondition Weakening**

- Suppose $\{P\}\ S\ \{Q\}$ is valid, and $Q \Rightarrow Q'$ is valid.  
- This means that every state that makes $Q$ true also makes $Q'$ true.  
- So $\{P\}\ S\ \{Q'\}$ is true as well.  
- Example:  
  $\{2 = 2\}\ x := 2\ \{x = 2\}$ and $x = 2 \Rightarrow x > 0$ implies  
  $\{2 = 2\}\ x := 2\ \{x > 0\}$  

If $Q \Rightarrow Q'$, then $Q'$ is **weaker** than $Q$.

### 8. Precondition Strengthening

- Suppose $P' \Rightarrow P$ and $\{P\}\ S\ \{Q\}$ is valid.  
- Then so is $\{P'\}\ S\ \{Q\}$ (analogous).

If $P' \Rightarrow P$, then $P'$ is **stronger** than $P$.

$$
\frac{\{P\}\ S\ \{Q\}}{\{P'\}\ S\ \{Q\}} \text{ if } (P' \Rightarrow P)
\quad\quad
\frac{\{P\}\ S\ \{Q\}}{\{P\}\ S\ \{Q'\}} \text{ if } (Q \Rightarrow Q')
$$

### 9. Examples

$\{y = 2\}\ x := y\ \{x > 0\}$

1. From assignment $\{y = 2\}\ x := y\ \{x = 2\}$ and $x = 2 \Rightarrow x > 0$  
2. Or from assignment $\{y > 0\}\ x := y\ \{x > 0\}$ and $y = 2 \Rightarrow y > 0$

### 10. if-Statements

#### General Form of an If-Statement

```
if b then S₁ else S₂
```

- $b$ is a boolean condition that evaluates to true or false  
- The value of $b$ may depend on the program state  

#### Informal Reasoning: Case Split

- If $b$ evaluates to true, then run $S₁$. We may assume $b$ as an additional precondition.  
- If $b$ evaluates to false, run $S₂$. We may assume $\lnot b$ as an additional precondition.  

#### Formal Rule

$\{P\}\ \text{if } b\ \text{then } S_1\ \text{else } S_2\ \{Q\}$  

Premises:

$$\displaystyle
\frac{
\{P \land b\}\ S_1\ \{Q\}
\quad
\{P \land \lnot b\}\ S_2\ \{Q\}
}{
\{P\}\ \text{if } b\ \text{then } S_1\ \text{else } S_2\ \{Q\}
}$$

### 11. Example: Factorial

**Precondition:**  
$\{n \geq 0\}$  

**Program:**
```c
fact := 1;
k := n;
while (k > 0)
    fact := fact * k;
    k := k - 1;
```

**Postcondition:**  
$\{fact = n!\}$  

**Discussion Points** 
- Is this Hoare triple valid?  
- What if $n < 0$ initially?  
- Why do we need to use another variable $k$ instead of just $n$?  
- How can we "push our assertions over the loop"?

---

## Notes

---

## Examples

> [!example] Assignment Axiom
> ```c
> assert (y * y + y >= 42);  // precondition
> x := y * y;                 // assignment
> assert (x + y >= 42);       // postcondition
> ```

> [!example] If-Statement Rule
> To prove $\{P\}\ \text{if } b\ \text{then } S_1\ \text{else } S_2\ \{Q\}$:
> - Prove $\{P \land b\}\ S_1\ \{Q\}$
> - Prove $\{P \land \lnot b\}\ S_2\ \{Q\}$

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Hoare Triple | $\{P\}\ S\ \{Q\}$ - assertion about program correctness |
| Precondition | Assertion that must hold before program execution |
| Postcondition | Assertion that must hold after program execution |
| Partial Correctness | Correctness assuming termination |
| Assignment Axiom | Rule for reasoning about assignments |
| Postcondition Weakening | If $Q \Rightarrow Q'$, then $\{P\}\ S\ \{Q'\}$ follows from $\{P\}\ S\ \{Q\}$ |
| Precondition Strengthening | If $P' \Rightarrow P$, then $\{P'\}\ S\ \{Q\}$ follows from $\{P\}\ S\ \{Q\}$ |

---

## Questions & Discussion

- [ ] What is the difference between partial and total correctness?
- [ ] How does the assignment axiom work?
- [ ] Why can we weaken postconditions but strengthen preconditions?
- [ ] How do we reason about if-statements?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Practice writing Hoare triples
- [ ] Understand assignment axioms
- [ ] Work with if-statement rules

---

## Related Notes

- [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Course Summary]]
- [[300 Computing/Theoretical Computer Science/Lectures/Week 08 - Lecture 1|Week 08 - Lecture 1]]

---

## References
