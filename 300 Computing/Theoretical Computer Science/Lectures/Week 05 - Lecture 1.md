---
course: "[[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]"
type: lecture
date: 2025-09-02
week: 5
session: 1
instructor: 
tags:
  - lecture
  - theoretical-computer-science
  - dafny
  - structural-induction
  - lists
status: in-progress
---

# Week 05 - Lecture 1

> [!info] Lecture Details
> **Course:** [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]
> **Type:** Lecture
> **Date:** Tuesday, 2 September 2025
> **Week:** 5
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Introduction to proving properties in Dafny using induction, including arithmetic sums and structural induction over lists. Covers recursive functions, the `calc` statement, and proofs about list operations like Sum, DoubleAll, Length, and Append.

---

## Key Concepts

### 1. Simple Example in Dafny

```c
lemma someProperty(p:bool,q:bool)
  ensures !p ==> !(p && q)
{
}
```

This encodes:  
$$\lnot p \;\;\Rightarrow\;\; \lnot(p \land q)$$  
Here $p$ and $q$ are booleans.

### 2. Induction Example: Arithmetic Sum

We want to prove:  
$$\forall n \geq 0,\;\;\sum_{i=0}^n i = \frac{n(n+1)}{2}$$

In Dafny we need a lemma with an `ensures` clause.

```c
lemma ArithInd()
  ensures (forall n:int | n >= 0 :: something == n*(n+1)/2)
{
}
```

But what is the `something`?

### 3. Recursive Function for Summation

We can define:  
```c
function Addall(n:int):int {
  if n <= 0 then 0
  else n + Addall(n-1)
}
```

Then write the lemma:  
```c
lemma {:induction false} MathInd(n:int)
  requires n >= 0
  ensures Addall(n) == n*(n+1)/2 {
}
```

### 4. Proof by Induction

**Base Case ($n=0$):**  
- LHS $= 0$  
- RHS $= \frac{0(0+1)}{2} = 0$  
- Therefore equal.

In Dafny:  
```c
if n == 0 {
  assert Addall(0) == 0;
  assert 0*(0+1)/2 == 0;
  assert Addall(n) == n*(n+1)/2;
}
```

**Inductive Hypothesis:**  
Assume for $k$:  
$$1 + 2 + \dots + k = \frac{k(k+1)}{2}$$

**Inductive Step:**  
Show it for $k+1$:  
$$1 + 2 + \dots + (k+1) = \frac{(k+1)(k+2)}{2}$$

### 5. Alternate Framing

Instead of $P(k)\Rightarrow P(k+1)$, we can prove $P(k-1)\Rightarrow P(k)$ for $k>0$.  
Both are valid induction strategies.

### 6. Expanding the Inductive Step

LHS:  
$$1 + 2 + \dots + (k-1) + k$$

By IH:  
$$1 + 2 + \dots + (k-1) = \frac{(k-1)k}{2}$$

So:  
$$\frac{(k-1)k}{2} + k = \frac{k^2-k+2k}{2} = \frac{k^2+k}{2} = \frac{k(k+1)}{2}$$

Which matches RHS.

### 7. Using `calc` in Dafny

```c
lemma {:induction false} MathInd(n:int)
  requires n >= 0
  ensures Addall(n) == n*(n+1)/2 {
    if n == 0 {
      ...
    } else {
      MathInd(n-1);
      calc {
        Addall(n);
        == Addall(n-1) + n;
        == (n-1)*(n-1+1)/2 + n;
        == n*(n-1)/2 + 2*n/2;
        == (n*(n-1) + 2n)/2;
        == (n*n - n + 2n)/2;
        == (n*n + n)/2;
        == n*(n+1)/2;
      }
    }
}
```

This mirrors the algebraic manipulation step-by-step.

### 8. Recursive Definition of Lists

Example list: [2,5,6,8]

Defined recursively:  
- $2 : (5,6,8)$  
- $2 : (5 : (6,8))$  
- $2 : (5 : (6 : (8)))$  
- $2 : (5 : (6 : (8 : ())))$

Or in Dafny:  
```c
datatype List<T> = Nil | Cons(head:T, tail:List<T>)
```

So:  
```c
Cons(2, Cons(5, Cons(6, Cons(8, Nil))))
```

### 9. Induction Over Lists

For naturals:  
- Base case: prove $P(0)$.  
- Step: prove $\forall k \geq 0,\; P(k) \Rightarrow P(k+1)$.

For lists:  
- Base case: prove $P(Nil)$.  
- Step: prove $\forall x, \forall xs.\; P(xs) \Rightarrow P(Cons(x,xs))$.

### 10. Example Functions

```c
function Sum(xs: List<nat>):nat {
  match xs
  case Nil => 0
  case Cons(x,tail) => x + Sum(tail)
}

function DoubleAll(xs: List<nat>):List<nat> {
  match xs
  case Nil => Nil
  case Cons(x,tail) => Cons(2*x, DoubleAll(tail))
}
```

### 11. Example Proof: Doubling and Sum

Prove:  
$$\forall xs.\; Sum(DoubleAll(xs)) = 2 \cdot Sum(xs)$$

**Base Case ($xs = Nil$):**  
- RHS $= 2 \cdot Sum(Nil) = 0$  
- LHS $= Sum(DoubleAll(Nil)) = Sum(Nil) = 0$  
- Holds.

**Inductive Hypothesis:**  
Assume $Sum(DoubleAll(ys)) = 2 \cdot Sum(ys)$.

**Inductive Step ($xs = Cons(y,ys)$):**  
LHS:  
$$
Sum(DoubleAll(Cons(y,ys))) = Sum(Cons(2y, DoubleAll(ys)))
= 2y + Sum(DoubleAll(ys))
$$

By IH:  
$$= 2y + 2 \cdot Sum(ys) = 2 \cdot (y + Sum(ys)) = 2 \cdot Sum(Cons(y,ys))$$

Therefore, LHS = RHS.

### 12. Example Function: Length

```c
function Length<T>(xs: List<T>):nat {
  match xs
  case Nil => 0
  case Cons(_,tail) => 1 + Length(tail)
}
```

### 13. Example Proof: Length Preserved

Prove:  
$$\forall xs.\; Length(DoubleAll(xs)) = Length(xs)$$

**Base Case ($xs = Nil$):**  
- RHS $= Length(Nil) = 0$  
- LHS $= Length(DoubleAll(Nil)) = Length(Nil) = 0$  
- Holds.

**Inductive Hypothesis:**  
Assume $Length(DoubleAll(ys)) = Length(ys)$.

**Inductive Step ($xs = Cons(y,ys)$):**  
LHS:  
$$
Length(DoubleAll(Cons(y,ys))) = Length(Cons(2y, DoubleAll(ys)))
= 1 + Length(DoubleAll(ys))
$$

By IH:  
$$= 1 + Length(ys) = Length(Cons(y,ys))$$

Therefore, LHS = RHS.

### 14. List Functions in Dafny vs Paper

Dafny:  
```c
function Sum(xs: List<nat>):nat {
  match xs
  case Nil => 0
  case Cons(x,tail) => x + Sum(tail)
}
```

On paper:  
- $Sum([]) = 0$  
- $Sum(x:xs) = x + Sum(xs)$

This form makes backwards application of rules clearer.

### 15. Append Function

```c
function Append<T>(xs:List<T>, ys:List<T>): List<T> {
  match xs
  case Nil => ys
  case Cons(x,tail) => Cons(x,Append(tail,ys))
}
```

### 16. Proof: Length of Append

We want to show:  
$$\forall xs,\forall ys.\; Length(Append(xs,ys)) = Length(xs) + Length(ys)$$

**Base Case ($xs=Nil$):**  
- RHS $= Length(Nil) + Length(ys) = 0 + Length(ys)$  
- LHS $= Length(Append(Nil,ys)) = Length(ys)$  
- Holds.

**Inductive Hypothesis**  
Assume for arbitrary $ks$:  
$$Length(Append(ks,ys)) = Length(ks) + Length(ys)$$

**Inductive Step ($xs=Cons(k,ks)$):**  
Prove:  
$$Length(Append(Cons(k,ks),ys)) = Length(Cons(k,ks)) + Length(ys)$$

LHS:  
$$
Length(Append(Cons(k,ks),ys)) \\
= Length(Cons(k,Append(ks,ys))) \quad \text{(by def. of Append)} \\
= 1 + Length(Append(ks,ys)) \quad \text{(by def. of Length)}
$$

By IH:  
$$= 1 + (Length(ks) + Length(ys)) = Length(Cons(k,ks)) + Length(ys)$$

So the property holds.

### 17. Fixing ys vs Fixing xs

The proof above used induction over $xs$, keeping $ys$ fixed.  
This works because $ys$ was arbitrary.

What if we fix $xs$ and try induction over $ys$?

**Attempt: Base Case ($ys=Nil$)**  
LHS:  
$$Length(Append(xs,Nil))$$

But `Append` matches on $xs$, not $ys$, making it harder to proceed directly.

**Attempt: Inductive Step ($ys=Cons(k,ks)$)**  
Prove:  
$$Length(Append(xs,Cons(k,ks))) = Length(xs) + Length(Cons(k,ks))$$

**Case 1: $xs=Nil$**  
$$
Length(Append(Nil,Cons(k,ks))) = Length(Cons(k,ks)) \\
= Length(Nil) + Length(Cons(k,ks))
$$

**Case 2: $xs=Cons(z,zs)$**  
$$
Length(Append(Cons(z,zs),Cons(k,ks))) \\
= Length(Cons(z,Append(zs,Cons(k,ks)))) \quad \text{(by def. of Append)} \\
= 1 + Length(Append(zs,Cons(k,ks))) \quad \text{(by def. of Length)}
$$

At this point, the inductive hypothesis:  
$$Length(Append(xs,ks)) = Length(xs) + Length(ks)$$

is not directly applicable—we'd need a different structure for the induction.

---

## Notes

### Summary

- Proved the length property by induction over $xs$.  
- Attempting induction over $ys$ is harder, since `Append` recurses on $xs$.  
- Choice of induction variable matters for proof structure.

---

## Examples

> [!example] Arithmetic Sum in Dafny
> ```c
> function Addall(n:int):int {
>   if n <= 0 then 0
>   else n + Addall(n-1)
> }
> 
> lemma {:induction false} MathInd(n:int)
>   requires n >= 0
>   ensures Addall(n) == n*(n+1)/2 {
>     if n == 0 {
>       assert Addall(0) == 0;
>     } else {
>       MathInd(n-1);
>       calc {
>         Addall(n);
>         == Addall(n-1) + n;
>         == (n-1)*n/2 + n;
>         == n*(n+1)/2;
>       }
>     }
> }
> ```

> [!example] Structural Induction on Lists
> To prove a property for all lists:
> - Base case: Prove $P(Nil)$
> - Inductive step: Assume $P(xs)$ and prove $P(Cons(x, xs))$

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Structural Induction | Induction over recursively defined data structures like lists |
| Base Case (Lists) | Proving the property for the empty list $Nil$ |
| Inductive Step (Lists) | Assuming the property for $xs$ and proving it for $Cons(x, xs)$ |
| `calc` Statement | Dafny construct for step-by-step algebraic manipulation |
| Append Function | Function that concatenates two lists |
| Well-Founded Order | An order with no infinite descending sequences |

---

## Questions & Discussion

- [ ] How does structural induction differ from mathematical induction?
- [ ] Why is the choice of induction variable important?
- [ ] How does the `calc` statement help in proofs?
- [ ] What makes a recursive function definition well-founded?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Practice writing structural induction proofs
- [ ] Work with Dafny list functions
- [ ] Understand the `calc` statement

---

## Related Notes

- [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Course Summary]]
- [[300 Computing/Theoretical Computer Science/Lectures/Week 04 - Lecture 1|Week 04 - Lecture 1]]

---

## References
