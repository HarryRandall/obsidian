---
course: "[[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]"
type: lecture
date: 2025-08-06
week: 3
session: 1
instructor: 
tags:
  - lecture
  - theoretical-computer-science
  - proofs
  - logic
  - dafny
status: in-progress
---

# Week 03 - Lecture 1

> [!info] Lecture Details
> **Course:** [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]
> **Type:** Lecture
> **Date:** Wednesday, 6 August 2025
> **Week:** 3
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Introduction to proof strategies in Dafny including proof by implication, case split, contradiction, and working with existential and universal quantifiers. Also covers debugging specifications using Knights and Knaves puzzles.

---

## Key Concepts

### 1. Why Knights & Knaves?

- Practise specifying properties in logic and Dafny.  
- Learn **proof by contradiction**.  
- Spot incorrect specifications and debug with assertions.

### 2. Single Person Puzzle

- Ask: "Are you a knight?"  
  - Knight → Yes  
  - Knave → Yes  
  - → Cannot determine.

- Ask: "If I asked you whether you are a knight, what would you say?"  
  - Knight → Yes  
  - Knave → No

Specification in Dafny:  
```c
Says(a) <==> (Says(a) <==> Knight(a))
Says(a) <==> (Says(a) <==> Knave(a))
```

### 3. Two-Person Puzzle (A & B)

- Ask each: "Is the other a knight?"  
  - Results are ambiguous (cannot determine).

- Ask each: "If I asked the other whether they are a knight, what would they say?"  
  - Now the answers distinguish cases.

Specification:  
```c
Says(a) <==> (Says(b) <==> Knight(b))
Says(b) <==> (Says(a) <==> Knave(a))
```

### 4. Proofs

- **If X says Y would say "Knight", then X is a knight.**  
  - Assume X is a knave → contradiction → conclude X is a knight.

- **If X says Y would say "Knave", then X is a knave.**  
  - Assume X is a knight → contradiction → conclude X is a knave.

### 5. Knights, Knaves, and Doors Puzzle

- Two doors (D1, D2), one is the exit.  
- Two people (knights/knaves).  
- Questions to each:  
  1. If I asked the other person whether D1 is the exit, what would they say?  
  2. Is D1 the exit?

- These two questions are enough to work out the truth, depending on responses.

### 6. Debugging the Specification

Incorrect Dafny model:  
```c
Says(b) <==> ((Says(a) <==> !DoorIsExit(d1)) && !DoorIsExit(d1))
```

- Problem: combining statements into one conjunctive condition is **not equivalent** to modelling them separately.

Correct approach:  
```c
Says(b) <==> (Says(a) <==> !DoorIsExit(d1))
Says(b) <==> !DoorIsExit(d1)
```

### 7. Proof by Implication

- To prove $A \Rightarrow B$:  
  1. Assume $A$ is true.  
  2. Prove $B$ using that assumption.

```c
if (A){
  // proof of B using A.
  assert (A ==> B);
  assert(A);
  assert(B);
}
```

### 8. Proof by Case Split

- Law of excluded middle: $A \lor \lnot A$ always holds.  
- Do a case split: prove both cases separately.

```c
assert (A || !A);
if (A){
  // proof using A
}
if (!A){
  // proof using !A
}
```

### 9. Proof by Contradiction

- Assume $\lnot A$.  
- Derive a contradiction.  
- Therefore $A$ must hold.

```c
if (!A){
  // derive contradiction
  assert false;
}
assert A;
```

### 10. Proof with Existential Quantifier

- To prove $\exists x. A(x)$:  
  - Provide a witness $e$.  
  - Show $A(e)$ holds.

```c
assert P(e);                  // assume we have proved P(e)
assert (exists x:T :: P(x));
```

- To use $\exists x. A(x)$:  
  - Introduce a **fresh variable** $v$ with the property $A(v)$.  
  - It must not conflict with other assumptions.

```c
var x:T :| P(x);   // ":|" means "such that"
// Now x and P(x) can be used in the proof
```

### 11. Proof with Universal Quantifier

- To prove $\forall x. A(x)$:  
  - Take an **arbitrary** $x$.  
  - Show $A(x)$ holds.

```c
forall x:T ensures P(x){
  // proof of P(x)
}
```

- To use $\forall x. A(x)$:  
  - If $e$ is an expression of type $T$, conclude $A(e)$.

```c
assert (forall x:T :: P(x));  // assume this holds
assert P(e);                  // instantiate with e
```

⚠️ Wrong approach (invalid):  
- Assuming $x=2$, prove $x=2$, and then conclude $\forall x. x=2$.  
- Not valid, because $x$ was not arbitrary.

### 12. Example: Even Numbers

Prove:  
$$\forall m,n \in \mathbb{Z}.\; even(m) \land even(n) \;\Rightarrow\; even(m+n)$$

Definition:  
$$even(n) \equiv \exists k \in \mathbb{Z}.\; n = 2k$$

**Proof:**  
- Let $m,n$ be arbitrary even integers.  
- Then $m=2i$, $n=2j$ for some integers $i,j$.  
- $m+n = 2i + 2j = 2(i+j)$  
- Since $(i+j)$ is an integer, let $v=i+j$.  
- So $m+n=2v$ → $even(m+n)$.

### 13. Example: Divisibility

Definition:  
- $div(n,m) \equiv \exists k \in \mathbb{N}.\; m = n \cdot k$  
- $prime(p) \equiv \forall n \in \mathbb{N}.\; div(n,p) \;\Rightarrow\; (n=p \lor n=1)$

Prove:  
$$\forall x,y,z \in \mathbb{Z}.\; div(x,y) \land div(y,z) \;\Rightarrow\; div(x,z)$$

**Proof:**  
- Let $x,y,z$ be arbitrary integers with $x|y$ and $y|z$.  
- Then $y = x \cdot k$ and $z = y \cdot j$ for some $k,j \in \mathbb{Z}$.  
- Substitute: $z = (x \cdot k) \cdot j = x \cdot (k \cdot j)$.  
- Since $k \cdot j$ is an integer, $z = x \cdot i$ for $i=k \cdot j$.  
- Therefore $x|z$.

### 14. Example: Parity of Consecutive Integers

Prove:  
$$\forall m \in \mathbb{Z}.\; (even(m) \land odd(m+1)) \;\lor\; (odd(m) \land even(m+1))$$

Definition:  
- $odd(n) \equiv \exists k \in \mathbb{Z}.\; n = 2k+1$

**Proof by Cases:**  
- Let $m$ be arbitrary. Any integer is either even or odd.

**Case 1:** $m$ is even.  
- Then $m = 2k$ for some $k$.  
- $m+1 = 2k+1$ → odd.

**Case 2:** $m$ is odd.  
- Then $m = 2k+1$ for some $k$.  
- $m+1 = (2k+1)+1 = 2(k+1)$ → even.

Therefore, consecutive integers have opposite parity.

### 15. Dafny Example: Divisibility by 5

```c
ghost predicate DividesByFive(x:int) 
  { exists k:int :: x == 5 * k }

lemma multDividesFive()
  ensures forall x:int, y:int :: 
    DividesByFive(x) && DividesByFive(y) ==> DividesByFive(x * y)
{
  forall x:int, y:int 
    ensures DividesByFive(x) && DividesByFive(y) ==> DividesByFive(x * y)
  {
    if (DividesByFive(x)) {
      var k:int :| x == 5 * k;
      if (DividesByFive(y)) {
        var z:int :| y == 5 * z;
        assert (x * y == (5 * k) * (5 * z));
        assert (x * y == 5 * 5 * k * z);
        assert (x * y == 5 * (5 * k * z));
      }
    }
  }
}
```

### 16. Inductive Proof - Sum of Odd Numbers

**Pattern**
$1 = 1^2$  
$1+3 = 2^2$  
$1+3+5 = 3^2$  
$1+3+5+7 = 4^2$  
$1+3+5+7+9 = 5^2$

**Conjecture**  
For all $n \geq 1$,  
$1+3+5+\cdots +(2n-1)=n^2$

**Claim**  
$S_n=\sum_{k=1}^{n} (2k-1)=n^2$

**Base Case ($n=1$)**  
$S_1=2\cdot 1-1=1,\quad 1^2=1$  
✓ Holds for $n=1$.

**Inductive Hypothesis**  
Assume true for some $n\geq 1$:  
$S_n=\sum_{k=1}^{n}(2k-1)=n^2$

**Inductive Step**  
$S_{n+1}=\sum_{k=1}^{n+1}(2k-1)=S_n+(2(n+1)-1)$

**By hypothesis**  
$S_{n+1}=n^2+(2n+1)=(n+1)^2$

**Conclusion**  
By induction,  
$\sum_{k=1}^{n}(2k-1)=n^2 \quad \forall n\geq 1$

### 17. Inductive Proof Example

Prove by induction that for all $n \geq 1$,

$$1+2+3+\cdots+n = \frac{n(n+1)}{2}.$$

**Base Case ($n=1$)**
$1 = \frac{1 \times (1 + 1)}{2}$, therefore the base case holds.

**Inductive Hypothesis** 
We assume that the statement $\frac{n(n+1)}{2}$ is true for $k$
- $s(k) = \frac{k(k+1)}{2}$
Now we look at $k + 1$
- We can write this as $1 + 2 + 3 + \dots + k + (k+1)$
- We defined $1 + 2 + 3 + ... + \; k$ previously as $s(k) = \frac{k(k+1)}{2}$ 
- This gives us $s(k + 1) = \frac{k(k+1)}{2} + (k + 1)$
- Now we can find a common denominator (2), and we can write it as
$$s(k+1) = \frac{k(k+1)}{2} + \frac{2(k+1)}{2}$$
- This gives us
$$s(k+1) = \frac{k(k+1) + 2(k+1)}{2}$$
$$s(k+1) = \frac{k^2 + k + 2k + 2}{2}$$
$$s(k+1) = \frac{k^2 + 3k + 2}{2}$$
$$s(k+1) = \frac{(k+1) (k+2)}{2}$$
- We can write this $(k+2)$ as $((k+1)+1)$ which matches the form
$$s(k+1) = \frac{(k+1) ((k+1)+1)}{2}$$
- Which is of the same form
$$\frac{n(n+1)}{2}$$
$$\frac{(n+1)((n+1)+1)}{2}$$
- Which therefore is proved.

---

## Notes

### Key Lesson

- **Be precise in specifications.**  
- Joining multiple statements with `&&` can change the meaning.  
- Dafny may find counterexamples if the specification does not match the intended logic.

---

## Examples

> [!example] Proof by Contradiction
> To prove "If X says Y would say 'Knight', then X is a knight":
> - Assume X is a knave
> - This leads to a contradiction
> - Therefore X must be a knight

> [!example] Proof with Existential Quantifier
> To prove $\exists x. P(x)$:
> - Provide a witness $e$ such that $P(e)$ holds
> - Then conclude $\exists x. P(x)$

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Proof by Implication | Assume the premise and prove the conclusion |
| Proof by Case Split | Use law of excluded middle to prove both cases |
| Proof by Contradiction | Assume negation, derive contradiction, conclude original statement |
| Witness | A specific value that satisfies an existential statement |
| Arbitrary Variable | A variable chosen without restrictions for universal proofs |
| Inductive Hypothesis | The assumption that a property holds for $k$ in an inductive proof |
| Inductive Step | Proving the property for $k+1$ using the inductive hypothesis |

---

## Questions & Discussion

- [ ] How do you prove an implication in Dafny?
- [ ] What is the difference between proof by contradiction and proof by case split?
- [ ] How do you work with existential quantifiers in proofs?
- [ ] What makes a variable "arbitrary" in a universal proof?
- [ ] Why is it important to be precise when combining statements in specifications?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Practice writing proofs in Dafny
- [ ] Work through Knights and Knaves puzzles
- [ ] Understand the structure of inductive proofs

---

## Related Notes

- [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Course Summary]]
- [[300 Computing/Theoretical Computer Science/Lectures/Week 01 - Lecture 1|Week 01 - Lecture 1]]
- [[300 Computing/Theoretical Computer Science/Lectures/Week 02 - Lecture 1|Week 02 - Lecture 1]]

---

## References
