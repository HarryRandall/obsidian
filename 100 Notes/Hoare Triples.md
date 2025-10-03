**Class**: [[COMP1600 - Theoretical Computer Science]]
**Date**: Wednesday, 1 October 2025, 12:38
**Tags**: 

---
## Lecture 1
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

---

This is the pre-state

```c
while (x != 0) {z:= z + y; z:= x-1;}
```

This is the post state

---

### Hoare Triples
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

---
### Truth of Hoare Triples

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

### What are Programs?
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
		- $x \neq y \land z = 0 /dots$ 
- While **b do s**

## Lecture 2