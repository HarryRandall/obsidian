---
course: "[[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]"
type: tutorial
date: 2025-08-24
week: 5
session: 1
instructor: 
tags:
  - tutorial
  - theoretical-computer-science
  - induction
  - dafny
  - lists
status: in-progress
---

# Week 05 - Tutorial 1

> [!info] Tutorial Details
> **Course:** [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]
> **Type:** Tutorial
> **Date:** Sunday, 24 August 2025
> **Week:** 5
> **Tutorial #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Practice with mathematical induction in Dafny, covering arithmetic sums, structural induction on lists with Take, Drop, and Append functions. Includes proofs about list length and list operations.

---

## Key Concepts

### 1. Exercise 1: Induction Problem (MA, 5 credits)

Recall the following problem from the last tutorial:

$$
1 = 1
$$

$$
1 + 3 = 4
$$

$$
1 + 3 + 5 = 9
$$

$$
1 + 3 + 5 + 7 = 16
$$

$$
1 + 3 + 5 + 7 + 9 = 25
$$

Last week, you were asked to work out a general formula for the above, and prove it using mathematical induction on paper.

The general formula is:

$$
1 + 3 + 5 + \dots + (2n - 1) = n^2
$$

which is equivalent to:

$$
\sum_{i=1}^n (2i - 1) = n^2
$$

This week, your task is to prove this formula in Dafny. Assume that you have the following function, which does the equivalent of $\sum_{i=1}^n (2i - 1)$:

```c
function DoubleMinusOne(n: int): int {
  if n <= 0 then 0 else (2 * n - 1) + DoubleMinusOne(n-1)
}
```

Complete the following lemma, ensuring that induction is set to false as shown. You must annotate your Dafny code with comments explaining the proof steps, what your inductive hypothesis is and where you used the inductive hypothesis.

```c
lemma {:induction false} SquareLemma(n:int)
  requires n >= 1
  ensures DoubleMinusOne(n) == n * n {
  // ... To Do: Insert your proof here.
}
```

### 2. Exercise 2: Take and Drop

The function `Take` takes a list and a natural and returns the start of the list, up to the given number of characters.  
For example, `Take([1,2,3,4,5], 2)` will return `[1,2]`.

The function `Take` is given as follows:

```c
function Take<T>(xs: List<T>, n: nat): List<T>
  requires n <= Length(xs)
{
  if n == 0 then Nil
  else Cons(xs.head, Take(xs.tail, n-1))
}
```

The function uses the definitions of `List` and `Length` as shown in the lectures (and also in the Dafny handout for this week's tutorial).

Your task is to write a function `Drop`.  
The function `Drop` does the opposite of `Take`: it removes the given number of characters from the given list.  
For example, `Drop([1,2,3,4,5], 2)` will return `[3,4,5]`.

### 3. Exercise 3: Take and Length

Your task is to prove the following property which relates the `Take` and `Length` functions:

$$
\text{Length}(\text{Take}(xs, n)) = n
$$

where $n \leq \text{Length}(xs)$.

Complete the following lemma to prove this property:

```c
lemma {:induction false} LengthTake<T>(xs: List<T>, n: nat)
  requires n <= Length(xs)
  ensures Length(Take(xs,n)) == n {
  match xs
    case Nil =>
      // ... To do.
    case Cons(x, xs) =>
      // ... To do.
}
```

### 4. Exercise 4: Drop and Length

Your task is to prove the following property which relates the `Drop` and `Length` functions:

$$
\text{Length}(\text{Drop}(xs, n)) = \text{Length}(xs) - n
$$

where $n \leq \text{Length}(xs)$.

Complete the following lemma to prove this property:

```c
lemma {:induction false} LengthDrop<T>(xs: List<T>, n: nat)
  requires n <= Length(xs)
  ensures Length(Drop(xs, n)) == Length(xs) - n {
  match xs
    case Nil =>
      // ... To do.
    case Cons(x, xs) =>
      // ... To do.
}
```

### 5. Exercise 5: Take, Drop and Append (MA, 5 credits)

As shown in lectures, the following function `Append` joins two lists together:

```c
function Append<T>(xs: List<T>, ys: List<T>): List<T>
  ensures Length(Append(xs, ys)) == Length(xs) + Length(ys) {
  match xs
    case Nil => ys
    case Cons(x, tail) => Cons(x, Append(tail, ys))
}
```

Your task is to prove the following property which relates the `Append`, `Take` and `Drop` functions:

$$
\text{Append}(\text{Take}(xs, n), \text{Drop}(xs, n)) = xs
$$

where $n \leq \text{Length}(xs)$.

Complete the following lemma to prove this property.  
You must annotate your Dafny code with comments explaining the proof steps, what your inductive hypothesis is and where you used the inductive hypothesis.

```c
lemma {:induction false} AppendTakeDrop<T>(xs: List<T>, n: nat)
  requires n <= Length(xs)
  ensures Append(Take(xs, n), Drop(xs, n)) == xs {
  // To be completed.
}
```

---

## Notes

---

## Examples

> [!example] Take Function
> ```c
> function Take<T>(xs: List<T>, n: nat): List<T>
>   requires n <= Length(xs)
> {
>   if n == 0 then Nil
>   else Cons(xs.head, Take(xs.tail, n-1))
> }
> ```
> Example: `Take([1,2,3,4,5], 2)` returns `[1,2]`

> [!example] Drop Function
> The `Drop` function removes the first $n$ elements from a list.
> Example: `Drop([1,2,3,4,5], 2)` returns `[3,4,5]`

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Take Function | Returns the first $n$ elements of a list |
| Drop Function | Removes the first $n$ elements from a list |
| Append Function | Concatenates two lists |
| Structural Induction | Induction over recursively defined data structures |

---

## Questions & Discussion

- [ ] How do Take and Drop relate to each other?
- [ ] Why is the property `Append(Take(xs, n), Drop(xs, n)) == xs` important?
- [ ] How do you prove properties about list operations?

---

## Action Items

- [ ] Complete Exercise 1: Induction Problem (MA)
- [ ] Complete Exercise 2: Take and Drop
- [ ] Complete Exercise 3: Take and Length
- [ ] Complete Exercise 4: Drop and Length
- [ ] Complete Exercise 5: Take, Drop and Append (MA)

---

## Related Notes

- [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Course Summary]]
- [[300 Computing/Theoretical Computer Science/Lectures/Week 05 - Lecture 1|Week 05 - Lecture 1]]

---

## References
