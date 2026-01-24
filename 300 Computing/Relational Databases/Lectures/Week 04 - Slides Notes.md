---
course: "[[300 Computing/Relational Databases/COMP2400 - Relational Databases|Relational Databases]]"
type: lecture
date: 2025-03-03
week: 4
session: 1
instructor: 
tags:
  - lecture
  - relational-databases
  - er-model
  - assignment
status: in-progress
---

# Week 04 - Slides Notes

> [!info] Lecture Details
> **Course:** [[300 Computing/Relational Databases/COMP2400 - Relational Databases|Relational Databases]]
> **Type:** Lecture
> **Date:** Monday, 3 March 2025
> **Week:** 4
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Notes from Week 4 lecture slides covering assignment information and Entity-Relationship (ER) Model concepts including entities, relationships, attributes, and keys.

---

## Key Concepts

### 1. Assignment 1

- Due Week 6 Friday 28/03/2025

### 2. Entity Relationship (ER) Model

- A model is a simplification of reality, often represented as a graphical depiction of data. It helps us to understand, specify, and build a system.
- The components of ER Model:
  - **Entity** - "things" in the real world (with independent existence.)
    - A student or course
  - **Relationship** - Associations between entities
    - A student enrols in one course
  - **Attributes** - Properties that describe entities and relationships
    - Student has attributes like StudentID, Name, Age
  - Key attributes - attributes that identify an entity instance uniquely
    - StudentID uniquely identifies a student

### 3. Keys

- The definition for **superkey**, **primary key**, and **candidate key** or an entity type is the same as for a relation schema.
  - A **superkey** of an entity type is a set of one or more attributes whose values uniquely determine each entity set.
  - A **candidate key** of an entity type is a minimal (in terms of number of attributes) superkey.
  - A **primary key** of a relationship type is the combination of primary keys of the entity types that participate in the relationship type.

---

## Notes

![[Relational_Database_W4.pdf]]

---

## Examples

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Entity | "Things" in the real world with independent existence |
| Relationship | Associations between entities |
| Attribute | Properties that describe entities and relationships |
| Key Attribute | Attributes that identify an entity instance uniquely |
| Superkey | A set of one or more attributes whose values uniquely determine each entity set |
| Candidate Key | A minimal superkey |
| Primary Key | The chosen candidate key for a relationship type (combination of primary keys of participating entity types) |

---

## Questions & Discussion

- [ ] What are the components of an ER Model?
- [ ] How do keys work in the ER model?
- [ ] What is the difference between superkey, candidate key, and primary key?

---

## Action Items

- [ ] Review lecture recording
- [ ] Review lecture slides
- [ ] Work on Assignment 1 (due Week 6 Friday 28/03/2025)
- [ ] Understand ER model components

---

## Related Notes

- [[300 Computing/Relational Databases/COMP2400 - Relational Databases|Course Summary]]
- [[300 Computing/Relational Databases/Lectures/Week 04 - ER Model Part 1|Week 04 - ER Model Part 1]]
- [[300 Computing/Relational Databases/Lectures/Week 04 - ER Model Part 2|Week 04 - ER Model Part 2]]
- [[300 Computing/Relational Databases/Lectures/Week 04 - ER Model Part 3|Week 04 - ER Model Part 3]]
- [[300 Computing/Relational Databases/Lectures/Week 04 - ER Model Part 4|Week 04 - ER Model Part 4]]

---

## References

- Lecture Slides: ![[Relational_Database_W4.pdf]]
