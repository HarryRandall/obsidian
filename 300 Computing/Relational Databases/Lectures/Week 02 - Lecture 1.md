---
course: "[[300 Computing/Relational Databases/COMP2400 - Relational Databases|Relational Databases]]"
type: lecture
date: 2025-02-17
week: 2
session: 1
instructor: 
tags:
  - lecture
  - relational-databases
  - relational-model
  - constraints
status: in-progress
---

# Week 02 - Lecture 1

> [!info] Lecture Details
> **Course:** [[300 Computing/Relational Databases/COMP2400 - Relational Databases|Relational Databases]]
> **Type:** Lecture
> **Date:** Monday, 17 February 2025
> **Week:** 2
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Introduction to the relational data model covering relations vs tables, domain constraints, entity integrity constraints, referential integrity constraints, constraint violations, and superkeys.

---

## Key Concepts

### 1. Relation vs. Table

- Column also referred to 'attribute' has a data type ()
  - URL
  - Long Text
  - Short Text
  - ETC
- Rows also known as 'tuple', linked list.

### 2. Domain Constraints

- Every value in a tuple must be from the domain of its attribute
  - INT
  - VARCHAR
  - DATE
  - SMALLINT
  - NOT NULL

### 3. Entity Integrity Constraint

- States that no primary key value can be NULL
  - This is because primary key values are used to *identify* individual tuples in a relation
  - If *StudentID* is specified as the primary key of *Student*, then the following relation violates the entity constraint

### 4. Referential Integrity Constraints

- A referential integrity constraint specifies a reference between two relations
- Data does not occur independently from one another across relations
- AKA: A linked record must exist in a separate table

### 5. Constraint Violations

- There are three basic operations that can change a database state
  1. Insert: Insert one or more new tuples in relation;
  2. Delete: delete tuples in relation
  3. Update (or Modify): Change the values of attributes in existing tuples.
- Whenever these operations are applied, the integrity constraints specified in a database schema should not be violated.

### 6. Superkey

**Superkey** is just what primary key you want to use (if it's valid)

---

## Notes

![[Relational_Database_W2L1.pdf]]

#### Housekeeping
1. Weekly online quiz due 12pm Wednesday after watching online lectures
2. Online lectures vs in-person lectures
3. Lecture slides uploaded on Thursday morning

---

## Examples

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Relation | A table in a relational database |
| Attribute | A column in a relation (table) |
| Tuple | A row in a relation (table) |
| Domain Constraint | Every value in a tuple must be from the domain of its attribute |
| Entity Integrity Constraint | No primary key value can be NULL |
| Referential Integrity Constraint | A constraint specifying a reference between two relations |
| Superkey | A set of attributes that uniquely identifies each row |

---

## Questions & Discussion

- [ ] What is the difference between a relation and a table?
- [ ] How do domain constraints ensure data validity?
- [ ] Why can't primary key values be NULL?
- [ ] What happens when constraint violations occur?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete weekly online quiz by Wednesday 12pm
- [ ] Review lecture slides when uploaded Thursday morning
- [ ] Practice understanding different types of constraints

---

## Related Notes

- [[300 Computing/Relational Databases/COMP2400 - Relational Databases|Course Summary]]
- [[300 Computing/Relational Databases/Lectures/Week 02 - Relational Data Model Part 1|Week 02 - Relational Data Model Part 1]]
- [[300 Computing/Relational Databases/Lectures/Week 02 - Relational Data Model Part 2|Week 02 - Relational Data Model Part 2]]
- [[300 Computing/Relational Databases/Lectures/Week 02 - SQL Introduction|Week 02 - SQL Introduction]]

---

## References

- Lecture slides: ![[Relational_Database_W2L1.pdf]]
