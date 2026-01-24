---
course: "[[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]"
type: tutorial
date: 2025-09-14
week: 6
session: 1
instructor: 
tags:
  - tutorial
  - theoretical-computer-science
  - structural-induction
  - lists
status: in-progress
---

# Week 06 - Tutorial 1

> [!info] Tutorial Details
> **Course:** [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]
> **Type:** Tutorial
> **Date:** Sunday, 14 September 2025
> **Week:** 6
> **Tutorial #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Further practice with structural induction on lists using Dafny. Covers Filter, Sum, DoubleAll functions, list reversal, and summation properties. Includes mini-assignment exercises.

---

## Key Concepts

### 1. Foundations of Computing: Week 6

- This tutorial will give you further practice at structural induction on lists, using Dafny.  
- Use the Dafny file `06-tutorial-handout.dfy` for the Dafny and mini-assignment questions.  
- Upload a plain text file called `u123456.dfy` (replace by your uID) to Wattle, you might lose (some) marks otherwise.  
- Submit the exercises marked **MA** by Wednesday 17th September, 2025, 09:00 via Wattle. Late submissions will score 0.

We are now using lists over a generic type `T` defined by the following:

```c
datatype List<T> = Nil | Cons(head: T, tail: List<T>)
```

### 2. Exercise 1: List Induction

Consider the function `Filter`, which takes a list of arbitrary type `T` and a function from `T` to booleans, and returns the list containing only the elements which satisfied the given function. Also recall the functions `Sum` and `DoubleAll`, shown in the lectures:

```c
function Filter<T>(p: T -> bool, xs: List<T>): List<T> {
  match xs
    case Nil => Nil
    case Cons(x,tail) => if p(x) then Cons(x,Filter(p,tail))
                         else Filter(p,tail)
}

function Sum(xs: List<nat>): nat {
  match xs
    case Nil => 0
    case Cons(x,tail) => x + Sum(tail)
}

function DoubleAll(xs: List<nat>): List<nat> {
  match xs
    case Nil => Nil
    case Cons(x,tail) => Cons((2*x),DoubleAll(tail))
}
```

Your task is to prove the following lemma:

$$
Sum(DoubleAll(Filter(p,xs))) == 2 * Sum(Filter(p,xs))
$$

1. Prove the lemma on paper without using Dafny. Ensure to justify every step of your proof.  

**Base Case**: DoubleAll = Nill (for an empty YS), Sum = Nill (for an empty ys)

2. Prove the lemma using Dafny.

### 3. Exercise 2: Summation

Consider the following function `sum2` from class together with a function that increments every list element by one.

```c
function sum2 (list: List<int>, a: int) : int {
  match list {
    case Nil => a
    case Cons(h, t) => sum2(t, a + h)
  }
}

function inc_list (list: List<int>): List<int> {
  match list {
    case Nil => Nil
    case Cons(h, t) => Cons(h+1, inc_list(t))
  }
}
```

We wish to show that  

$$
sum2(inc\_list(list), 0) == len(list) + sum2(list, 0)
$$  

for all lists `list` of integers, where `len` is the length function given below:

```c
function len (list: List<int>) : int {
  match list { 
    case Nil => 0 
    case Cons(h, t) => 1 + len(t) 
  }
}
```

(a) Prove the lemma `sum2_add` by completing the following code snippet:

```c
lemma sum2_add (list: List<int>, a: int, b: int)
  ensures sum2(list, a+ b) == sum2(list, a) + b
{ /* your code here */ }
```

(b) Prove the lemma `sum2_inc_aux` by completing the code snippet below:

```c
lemma sum2_inc_aux (list: List<int>, a: int)
  ensures sum2(inc_list(list), a) == len(list) + sum2(list, a)
{ /* your code here */ }
```

You might want to use the lemma from the previous part.  

(c) Use the lemma just proved to establish our goal by completing the code below:

```c
lemma sum2_inc (list: List<int>)
  ensures sum2(inc_list(list), 0) == len(list) + sum2(list, 0)
{ /* your code here */ }
```

### 4. Exercise 3: List Reversal (MA, 2 + 2 + 3 + 3 credits)

Consider the functions `Append`, `rev1` and `rev2` below, where `Append` joins two lists together, and `rev1` and `rev2` are two different formulations of list reversal.

```c
function Append<T>(xs:List<T>, ys:List<T>): List<T>{
  match xs
    case Nil => ys
    case Cons(x,tail) => Cons(x,Append(tail,ys))
}

function rev1 (list: List<int>) : List<int> {
  match list { 
    case Nil => Nil
    case Cons(h, t) => Append (rev1(t), Cons(h, Nil)) 
  }
}

function rev2 (list: List<int>, a: List<int>) : List<int> {
  match list { 
    case Nil => a
    case Cons(h, t) => rev2 (t, Cons(h, a)) 
  }
}
```

Our goal is to prove that  

$$
rev1(list) == rev2(list, Nil)
$$  

for all integer lists `list`.

(a) Formulate a lemma `Append_assoc` that expresses that append is associative. Dafny should prove this lemma automatically.  

(b) Formulate a lemma `Append_nil` that expresses that concatenation with an empty list on the right is the identity. Again, Dafny should prove this automatically.  

(c) Formulate and prove a lemma `rev1_rev2_aux` that generalises the statement `rev1(list) == rev2(list, Nil)`.  

(d) Use the lemma above to give a proof of lemma `rev1_rev2(list: List<int>)` which states that  

$$
rev1(list) == rev2(list, Nil)
$$

---

## Notes

---

## Examples

> [!example] Filter Function
> ```c
> function Filter<T>(p: T -> bool, xs: List<T>): List<T> {
>   match xs
>     case Nil => Nil
>     case Cons(x,tail) => if p(x) then Cons(x,Filter(p,tail))
>                          else Filter(p,tail)
> }
> ```

> [!example] List Reversal
> Two different implementations of list reversal:
> - `rev1`: Recursive using Append
> - `rev2`: Tail-recursive with accumulator

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Filter Function | Returns list elements satisfying a predicate |
| List Reversal | Reversing the order of elements in a list |
| Tail Recursion | Recursion where the recursive call is the last operation |
| Associative Property | $(a \cdot b) \cdot c = a \cdot (b \cdot c)$ |

---

## Questions & Discussion

- [ ] How do you prove properties about filtered lists?
- [ ] What is the difference between `rev1` and `rev2`?
- [ ] Why is associativity important for list operations?

---

## Action Items

- [ ] Complete Exercise 1: List Induction
- [ ] Complete Exercise 2: Summation
- [ ] Complete Exercise 3: List Reversal (MA)

---

## Related Notes

- [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Course Summary]]
- [[300 Computing/Theoretical Computer Science/Lectures/Week 06 - Lecture 1|Week 06 - Lecture 1]]

---

## References
