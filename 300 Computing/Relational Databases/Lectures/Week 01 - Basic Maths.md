---
course: "[[300 Computing/Relational Databases/COMP2400 - Relational Databases|Relational Databases]]"
type: lecture
date: 2025-02-23
week: 1
session: 1
instructor: 
tags:
  - lecture
  - relational-databases
  - mathematics
  - set-theory
status: in-progress
---

# Week 01 - Basic Maths

> [!info] Lecture Details
> **Course:** [[300 Computing/Relational Databases/COMP2400 - Relational Databases|Relational Databases]]
> **Type:** Lecture
> **Date:** Sunday, 23 February 2025
> **Week:** 1
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link](https://wattlecourses.anu.edu.au/pluginfile.php/3887327/mod_resource/content/11/w01l02_db_math_concepts.mp4)

---

## Overview

Introduction to mathematical foundations for relational databases, covering sets, set operations, tuples, Cartesian products, and relation notation. These concepts form the theoretical basis for understanding relational database models.

---

## Key Concepts

### 1. Sets

A set is a container of things, that we want to put different objects into. A set is defined as a collection of distinct elements.

**Two basic properties:**
1. The elements have no order; $\{1,2,3\}$ = $\{2,3,1\}$
2. Each element cannot be in the set more than once;
   - $\{Monday, Tuesday, Wednesday, Friday, Friday\}$ is not a set
   - $\{Monday, Tuesday, Wednesday, Friday\}$ is a set
   - Note that Multisets allow to have duplicate elements.

**Two ways of specifying a set:**
1. $\{x_1, ..., x_n\}$ (i.e., list all elements in a set)
   - $\{1,2,3,4,5\}$
   - $\{Sydney, Melbourne, Canberra\}$
   - $\{\}$ or $∅$, i.e., the empty set.
2. $\{x | y\}$ (i.e., describes the elements in the set $x$ that satisfy the conditions of $y$).
   - $\{x |$ student is enrolled in comp2400 $\}$ 
   - $\{x |$ $x$ is an integer and $x > 0$ $\}$ 

### 2. Set Operations

**Membership**: $x \in A$ if $x$ is in the set $A$; $x \notin A$ if $x$ not in the set $A$.

<img src="Pasted image 20250223113106.png" align="right" width="200">

- Here we have two sets represented by the circles
  * $1 \in \{1,2\}$  (smaller circle)
  * $2 \in \{1,2,3\}$  (larger circle)
- $1 ∈ {1, 2, 3}$ (1 is an element of the set containing 1, 2, and 3)
- $3 ∈ {1, 2, 3}$ (3 is an element of the set containing 1, 2, and 3)
- $2 ∈ {1, 2}$ (2 is an element of the set containing 1 and 2)
- $3 ∉ {1, 2}$ (3 is _not_ an element of the set containing 1 and 2)

**Equality**: if $A$ and $B$ have the same elements, we write $A = B$; otherwise we write $A \neq B$

<img src="Pasted image 20250223113106.png" align="right" width="200">

- $\{x | x$ is an integer, $x > 1$ and $x < 6$$\}$ = $\{2,3,4,5\}$
- If one set contains some elements that is not in the other set, then they are different.
- $\{1,2\} \neq \{1,2,3\}$ - are the elements in the two sets equal

**Subset:** $A$ is called a **subset** of $B$ if every element of $A$ is in $B$ and we write $A \subseteq B$ 

**Proper subset:** $A$ is called a **proper subset** of **B** if $A \subseteq B$ and $A$ and $B$ are not equal, and we write $A \subset B$.

- $\{1,2\} \subseteq \{1,2,3\}$ 
- $\{1,2\} \subseteq \{1,2\}$ 
- $\{1,2\} \subset \{1,2,3\}$ 

<img src="Screenshot 2025-02-23 at 3.37.18 pm.png" align="right" width="200">

**Union**: $A \cup B$ for the set containing everything in $A$ and everything in $B$ 
- $\{3,4,5\} \cup \{3,5,7,9\} =\{3,4,5,7,9\}$

<img src="Screenshot 2025-02-23 at 3.35.09 pm.png" align="right" width="200">

**Intersection:** $A \cap B$ for the set of elements that are in both A and B
- $\{3,4,5\} \cap \{3,5,7,9\} =\{3,5\}$

<img src="Screenshot 2025-02-23 at 3.39.09 pm.png" align="right" width="200">

**Difference:** $A - B$ is the elements from $A$ that are not in $B$
- $\{3,4,5\} - \{3,5,7,9\} =\{4\}$

### 3. Tuple Notation

A **tuple** is an ordered list of $n$ elements
- $(1,2,3,4,5)$ - this is a tuple
- (Melbourne, Sydney, Canberra) - this is a tuple

- Two tuples are equal if they have the same elements in the same order.
  - $(1,2,3) \neq (2,1,3)$ because they are out of order.
  - $(1,2,3) = (1,2,3)$ because they are in order.
- The same element can be in a tuple twice.
  - $\{Monday, Monday, Tuesday, Wednesday, Friday, Friday\}$ is a valid tuple.
- Ordered Pairs are special cases of tuples
  - $\{Monday, Monday\}$

### 4. Cartesian Product of Sets

The Cartesian product operation that takes an ordered list of sets, and returns a list of tuples.

**Cartesian Product** $D_1 \times ... \times D_n$  is the set of all possible combinations of values from the sets $D_1, ..., D_n$

It contains all the tuples with the first element from the first set, the second element from the second element and so on.

### 5. Relation Notation

A **relation** is a subset of a **Cartesian Product** of sets.

---

## Notes

### Revision Questions

Let $A = \{1,2,3\}$  and $B = \{true,false\}$

Which are the following are correct?

1. A set that contains $\{2\} \in A$ 
   - This is incorrect as $\{2\}$ is a **proper subset** of $A$.
2. $true \subset B$ 
   - This is incorrect as $true \in B$ and $\{true\} \subset B$ 
3. $\{2,3\} \subseteq \{A\} \cup \{B\}$
   - This means - $\{1,2,3,true,false\} \subseteq \{2,3\}$
   - This is true as the set $\{2,3\}$ falls inside the larger subset.
4. $2 \in \{A\} \cap \{B\}$
   - This is false as there are no elements that intersect the set $\{A\}$ nor $\{B\}$
5. $2 \in \{A\} - \{1,3,5\}$
   - This is true because $\{A\} - \{1,3,5\}$ results in the set $\{2,3\}$ and $2$ is an element of that set.
6. $\{1, 4\} \subseteq \{A\} - \{B\}$
   - This is false as $4$ is not a subset of neither $\{A\}$ nor $\{B\}$.
7. $∅ \cap \{B\} = ∅$ 
   - This is true, as $\cap$ is the union (the intersection) between the empty set and $\{B\}$ and there are no items in the empty set so no intersection.

---

## Examples

> [!example] Cartesian Product Example
> $A \times B = \{(a, b) \mid a \in A \text{ and } b \in B\}$.
> 
> If $A = \{2, 3\}$ and $B = \{Clubs, Diamonds, Hearts, Spades\}$
> 
> Then $A \times B = \{(2, Clubs), (2, Diamonds), (2, Hearts), (2, Spades), (3, Clubs), (3, Diamonds)$,$(3, Hearts), (3, Spades)\}$.
> 
> Then we can verify:
> 1. $(2, Clubs) \in A \times B$
> 2. $(Spades, 3) \notin A \times B$
> 3. $(4, Hearts) \notin A \times B$
> 4. $\{(3, Clubs), (3, Diamonds)(3, Hearts)(3, Spades)\} \subseteq A \times B$

> [!example] Relation Example
> Let $X = \{Canberra, Paris, Tokyo, Kyoto\}$, and $Y = \{Australia, France, Japan\}$
> 
> Let $R = \{(a, b) \mid a \in X, b \in Y \text{ and } a \text{ is a city in } b\}$.
> 
> It is easy to see that $R$ is a relation
> - $R \subseteq X \times Y$.
> - $(Canberra, Australia) \in R$, $(Paris, France) \in R$ but $(Tokyo, France) \notin R$, $(France, Japan) \notin R$

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Set | A collection of distinct elements with no order |
| Membership | $x \in A$ if $x$ is in the set $A$; $x \notin A$ if $x$ not in the set $A$ |
| Subset | $A \subseteq B$ if every element of $A$ is in $B$ |
| Proper Subset | $A \subset B$ if $A \subseteq B$ and $A \neq B$ |
| Union | $A \cup B$ is the set containing everything in $A$ and everything in $B$ |
| Intersection | $A \cap B$ is the set of elements that are in both A and B |
| Difference | $A - B$ is the elements from $A$ that are not in $B$ |
| Tuple | An ordered list of $n$ elements |
| Cartesian Product | $D_1 \times ... \times D_n$ is the set of all possible combinations of values from the sets $D_1, ..., D_n$ |
| Relation | A subset of a Cartesian Product of sets |

---

## Questions & Discussion

- [ ] What is the difference between a set and a multiset?
- [ ] How do subset and proper subset differ?
- [ ] What is the relationship between tuples and Cartesian products?
- [ ] How are relations defined in terms of sets and Cartesian products?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions on set operations
- [ ] Practice working with Cartesian products
- [ ] Understand the connection between mathematical relations and database relations

---

## Related Notes

- [[300 Computing/Relational Databases/COMP2400 - Relational Databases|Course Summary]]
- [[300 Computing/Relational Databases/Lectures/Week 01 - Introduction to Database Systems|Week 01 - Introduction to Database Systems]]
- [[300 Computing/Relational Databases/Lectures/Week 01 - Lecture 1|Week 01 - Lecture 1]]

---

## References

- Lecture Recording: [Link](https://wattlecourses.anu.edu.au/pluginfile.php/3887327/mod_resource/content/11/w01l02_db_math_concepts.mp4)
