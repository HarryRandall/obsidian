**Class**: [[COMP1600 - Theoretical Computer Science]]
**Date**: Monday , 21 July 2025, 20:02
**Tags**: #dafny #propositional_logic

---
#### Lecture 1
##### Verification
Programs have bugs. We need a way of ensuring that a program is correct according to its **specification**.

- **Why is this important?**
  - Safety-critical systems (cars, airplanes)
  - Financial systems
  - Energy systems
- **What problems could it cause?**
  - Danger to people
  - Financial loss
  - Loss of critical infrastructure

---

###### Example 1: Ariane 5 Rocket
- Exploded due to a software bug.

###### Example 2: The DAO (Ethereum, 2016)
- A decentralised autonomous organisation launched on the Ethereum blockchain.  
- Raised $150 million USD worth of ETH.  
- Hacked due to vulnerabilities in its code base.  
- Ethereum now uses **Hoare-style logic** to prevent similar failures.

###### Example 3: Needham–Schroeder Public Key Protocol
- In use for 17 years before a flaw was found using **formal methods**.  
- Security risk: attackers could access encrypted information.  
- Flaw was discovered using **model checking**.

---

> **Why not just test a program?**
- **Testing** → explores *some* execution paths.  
- **Verification** → proves correctness for *all* paths.  

In this course we use **Dafny**, a verification tool, to:
- Write specifications
- State preconditions and postconditions
- Prove programs satisfy their specifications

---

##### Dafny Examples

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

---

##### Preconditions & Postconditions

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

---

##### Adding Preconditions
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

---

##### Key Takeaways
- Verification ensures correctness for **all inputs and execution paths**.  
- Dafny allows us to formally specify:
  - Preconditions (`requires`)  
  - Postconditions (`ensures`)  
- Formal verification prevents real-world disasters caused by subtle bugs.  


---

#### Lecture 2

##### Propositions
- A **proposition** is a statement that is either **true** or **false**.  
Examples:  
- The sky is blue.  
- The sun is hot.  
- Canberra is in Australia.  
- Australia is in the Northern Hemisphere.  
- Kryptonite does not affect Clark Kent.  

---
##### Logical Connectives

1. **Negation ($\lnot$)**  
   - Example: Let $p =$ "It is raining now".  
   - Then $\lnot p =$ "It is not raining now".  
   - Negation flips the truth value.  

Truth table:  

| p | $\lnot p$ |
|---|-----------|
| T | F         |
| F | T         |

---

2. **Conjunction ($\land$)**  
   - Example: $p =$ "My hat is green", $q =$ "My scarf is yellow".  
   - $p \land q =$ "My hat is green **and** my scarf is yellow".  

Truth table:  

| p | q | $p \land q$ |
|---|---|-------------|
| T | T | T           |
| T | F | F           |
| F | T | F           |
| F | F | F           |

---

3. **Disjunction ($\lor$)**  
   - Example: $p =$ "I will play tennis today", $q =$ "I will watch a movie today".  
   - $p \lor q =$ "I will play tennis today **or** I will watch a movie today".  
   - Inclusive “or”: true if at least one is true.  

Truth table:  

| p | q | $p \lor q$ |
|---|---|------------|
| T | T | T          |
| T | F | T          |
| F | T | T          |
| F | F | F          |

---

4. **Implication ($\Rightarrow$)**  
   - Example: $p =$ "It is raining today", $q =$ "I will stay at home".  
   - $p \Rightarrow q =$ "If it is raining today, then I will stay at home".  
   - **Rule:** If $p$ is false, the implication is always true.  

Truth table:  

| p | q | $p \Rightarrow q$ |
|---|---|-------------------|
| T | T | T                 |
| T | F | F                 |
| F | T | T                 |
| F | F | T                 |

---

5. **Biconditional ($\iff$)**  
   - "If and only if".  
   - Combines both $p \Rightarrow q$ and $q \Rightarrow p$.  

Example:  
- $p =$ "I can swim", $q =$ "I can reach the island".  
- $p \iff q =$ "I can reach the island **if and only if** I can swim".  

Truth table:  

| p | q | $p \iff q$ |
|---|---|------------|
| T | T | T          |
| T | F | F          |
| F | T | F          |
| F | F | T          |

---
##### Operator Precedence

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

---
##### Converse & Inverse
- Given $p \Rightarrow q$:  
  - **Converse:** $q \Rightarrow p$  
  - **Inverse:** $\lnot p \Rightarrow \lnot q$  
  - **Contrapositive:** $\lnot q \Rightarrow \lnot p$ (equivalent to original)  

---
#### Lecture 3

##### Tautologies, Contradictions, Contingencies
- **Tautology:** always true (all rows in truth table = T).  
- **Contradiction:** always false.  
- **Contingency:** sometimes true, sometimes false.  

---
##### Example: Tautology Proof
Show that $(p \Rightarrow q) \iff (\lnot q \Rightarrow \lnot p)$ is a tautology.  

| p | q | $\lnot p$ | $\lnot q$ | $p \Rightarrow q$ | $\lnot q \Rightarrow \lnot p$ | Equivalence |
|---|---|-----------|-----------|-------------------|-------------------------------|-------------|
| T | T | F         | F         | T                 | T                             | T           |
| T | F | F         | T         | F                 | F                             | T           |
| F | T | T         | F         | T                 | T                             | T           |
| F | F | T         | T         | T                 | T                             | T           |

---
##### Rules of Inference

- **Modus Ponens (MP):** $p \Rightarrow q$, $p$ ⟹ $q$  
- **Modus Tollens (MT):** $p \Rightarrow q$, $\lnot q$ ⟹ $\lnot p$  
- **Hypothetical Syllogism (HS):** $p \Rightarrow q$, $q \Rightarrow r$ ⟹ $p \Rightarrow r$  
- **Disjunctive Syllogism (DS):** $p \lor q$, $\lnot p$ ⟹ $q$  
- **Disjunctive Addition:** $p$ ⟹ $p \lor q$  
- **Conjunctive Simplification:** $p \land q$ ⟹ $p$ (or $q$)  
- **Dilemma:** $(p \lor q)$, $(p \Rightarrow r)$, $(q \Rightarrow r)$ ⟹ $r$  

---
##### Logic Puzzle

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

##### Key Takeaways (Lectures 2–3)
- Logical connectives define how to combine propositions.  
- Truth tables show exact behaviour of connectives.  
- Precedence rules remove ambiguity in formulas.  
- Converse, inverse, contrapositive distinguish related statements.  
- Tautologies, contradictions, contingencies classify formulas.  
- Rules of inference formalise valid reasoning steps.  
- Logic puzzles apply formal reasoning to real problems.  

