---
course: "[[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]"
type: tutorial
date: 2025-10-12
week: 10
session: 1
instructor: 
tags:
  - tutorial
  - theoretical-computer-science
  - hoare-triples
  - loop-invariants
  - sequences
status: in-progress
---

# Week 10 - Tutorial 1

> [!info] Tutorial Details
> **Course:** [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Theoretical Computer Science]]
> **Type:** Tutorial
> **Date:** Sunday, 12 October 2025
> **Week:** 10
> **Tutorial #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Advanced practice with Hoare triples and loop invariants, covering division with remainder, summation of function values, sequences in Dafny, and duplicate-free sequences. Includes mini-assignment exercises.

---

## Key Concepts

### 1. Exercise 1: Division with Remainder

**Provided Code**
```c
method div(a: int, b: int) returns (m: int, r: int)
  requires a >= 0 && b > 0
  // ensures a == m * b + r && 0 <= r < b
{
  m := 1;
  while (m * b <= a) {
    m := m + 1;
  }
  m := m - 1;
  r := a - m * b;
}
```

**Task**
Annotate the program with suitable loop invariants proving correctness.  
Optionally modify the preconditions to relax them to `b > 0` or even `b != 0`, adjusting annotations accordingly.

### 2. Exercise 2: Summation of Function Values

**Provided Code**
```c
function sum(f: int -> int, l: int, h: int): int
  decreases h - l
{ if (h <= l) then 0 else f(l) + sum(f, l + 1, h) }

method sum_loop(f: int -> int, lo: int, hi: int)
  returns (s: int) // ensures s == sum(f, lo, hi)
{
  var l, h: int := lo, hi;
  s := 0;
  while (l < h) {
    s := s + f(l);
    l := l + 1;
  }
}
```

**Task**
1. Provide a brief (≤ 3 sentences) explanation why `sum_loop` correctly computes `sum`.  
2. Add invariants allowing Dafny to verify the ensures clause.  
3. Optionally prove the lemma:  
   $$(lo \leq hi) \Rightarrow sum(f, lo, hi + 1) = sum(f, lo, hi) + f(hi)$$  
   if needed by your chosen invariant.

### 3. Exercise 3: Sequences in Dafny

**Provided Code**
```c
method find_max(a: seq<int>) returns (m: int)
  requires |a| >= 1
  // ensures forall j :: 0 <= j < |a| ==> a[j] <= m
{
  var i := 1;
  m := a[0];
  while (i < |a|) {
    if a[i] >= m { m := a[i]; }
    i := i + 1;
  }
}
```

**Task**
1. Extend the specification to ensure that `m` is **an element of the sequence**.  
2. Prove correctness by adding invariants:
   - One confirming the maximality property.
   - Another establishing that the returned `m` indeed comes from `a`.

### 4. Exercise 4: A Coin Game

**Provided Code**
```c
method coingame(ncoins: int) returns (win: bool)
  requires ncoins >= 1
  // requires <your condition here>
  // ensures win
{
  var n := ncoins;
  while (n > 1) {
    var i: int :| 1 <= i <= 2 && i <= n;  // opponent's move
    n := n - i;
    n := n - (3 - i);  // mirror move
  }
  win := (n == 1);
}
```

**Task**
Define a **precondition** on `ncoins` (true for infinitely many values) that guarantees a win.  
Then, annotate the code with an invariant proving that under this condition, `win` holds.

### 5. Exercise 5: Duplicate-Free Sequences (Mini-Assignment, 10 marks)

**Provided Predicates**
```c
predicate dup_free(a: seq<int>)
{ forall i, j :: 0 <= i < j < |a| ==> a[i] != a[j] }

predicate sorted(a: seq<int>)
{ forall i, j :: 0 <= i < j < |a| ==> a[i] <= a[j] }
```

**Provided Methods**
```c
method nodup(a: seq<int>) returns (b: bool)
// ensures b <==> dup_free(a)
{
  b := true; var m := |a| - 1;
  while (m > 0) {
    var n := m - 1;
    while (n >= 0) {
      if a[n] == a[m] { b := false; }
      n := n - 1;
    }
    m := m - 1;
  }
}
```

```c
method nodup_srt(a: seq<int>) returns (b: bool)
  requires sorted(a)
  // ensures b <==> dup_free(a)
{
  b := true;
  var m := |a| - 1;
  while (m > 0) {
    if a[m - 1] == a[m] { b := false; }
    m := m - 1;
  }
  return b;
}
```

**Tasks**
(a) Provide a ≤ 3-sentence explanation of why each method satisfies its ensures clause.  
(b) Prove `nodup` correct by adding invariants and re-enabling its ensures clause.  
(c) Repeat for `nodup_srt`.  
You may define helper predicates to simplify invariants.  
If Dafny cannot verify the invariants syntactically, include them as comments—this still earns partial credit.

---

## Notes

---

## Examples

> [!example] Division with Remainder
> The division algorithm finds the quotient $m$ and remainder $r$ such that $a = m \cdot b + r$ with $0 \leq r < b$.

> [!example] Sequences in Dafny
> Sequences are similar to lists but support indexing: `a[i]` accesses element at index $i$.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Sequence | An ordered collection with indexing support |
| Duplicate-Free | A sequence with no repeated elements |
| Sorted Sequence | A sequence where elements are in non-decreasing order |
| Nested Loop | A loop inside another loop |

---

## Questions & Discussion

- [ ] How do you prove correctness of nested loops?
- [ ] What invariants are needed for sequence operations?
- [ ] How does the coin game strategy work?

---

## Action Items

- [ ] Complete Exercise 1: Division with Remainder
- [ ] Complete Exercise 2: Summation of Function Values
- [ ] Complete Exercise 3: Sequences in Dafny
- [ ] Complete Exercise 4: A Coin Game
- [ ] Complete Exercise 5: Duplicate-Free Sequences (MA)

---

## Related Notes

- [[300 Computing/Theoretical Computer Science/COMP1600 - Theoretical Computer Science|Course Summary]]
- [[300 Computing/Theoretical Computer Science/Lectures/Week 10 - Lecture 1|Week 10 - Lecture 1]]

---

## References
