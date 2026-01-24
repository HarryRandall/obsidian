---
course: "[[300 Computing/Relational Databases/COMP2400 - Relational Databases|Relational Databases]]"
type: lecture
date: 2025-02-24
week: 3
session: 1
instructor: 
tags:
  - lecture
  - relational-databases
  - sql
  - dml
status: in-progress
---

# Week 03 - Lecture 1

> [!info] Lecture Details
> **Course:** [[300 Computing/Relational Databases/COMP2400 - Relational Databases|Relational Databases]]
> **Type:** Lecture
> **Date:** Monday, 24 February 2025
> **Week:** 3
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Introduction to Data Manipulation Language (DML) in SQL covering INSERT, UPDATE, DELETE statements, and join operations including INNER JOIN, LEFT/RIGHT JOIN, and NATURAL JOIN.

---

## Key Concepts

### 1. INSERT Statement

The `{sql} INSERT` statement is used to add tuples in a relation.

```SQL
INSERT INTO table_name [(attribute_name,...,attribute_name)] VALUES (value,...,value),...,(value,...,value);
```

### 2. UPDATE Statement

The `{sql} UPDATE` statement is used to modify attribute values of one or more selected tuples.

```SQL
UPDATE table_name SET attribute_name = value,...,attribute_name = value [WHERE selection_condition];
```

### 3. DELETE Statement

The `{sql} DELETE` statement is used to remove tuples from a relation

```SQL
DELETE FROM table_name [WHERE selection_condition];
```

### 4. Join Operations

- When we want to retrieve data from more than one relation, we often need to use join operations.
- **INNER JOIN**: tuples are included in the result only if there is at least one matching in both relations
- **LEFT/RIGHT JOIN**: All tuples of the left/right table are included in the result, even if there are no matches in the relations.
- **NATURAL JOIN**: is considered as one kind of inner join.
  - In a natural join, two relations are joined implicitly by comparing all attributes of the same names in both relations.
  - A natural join retains all data of the two tables for only the matched rows, without duplication.

---

## Notes

![[W3 Lecture Slides.pdf]]

---

## Examples

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| INSERT | Statement used to add tuples in a relation |
| UPDATE | Statement used to modify attribute values of one or more selected tuples |
| DELETE | Statement used to remove tuples from a relation |
| INNER JOIN | Join where tuples are included only if there is a match in both relations |
| LEFT JOIN | Join where all tuples of the left table are included, even without matches |
| RIGHT JOIN | Join where all tuples of the right table are included, even without matches |
| NATURAL JOIN | A type of inner join that joins relations by comparing attributes with the same names |

---

## Questions & Discussion

- [ ] What is the difference between INSERT, UPDATE, and DELETE?
- [ ] When would you use an INNER JOIN vs a LEFT JOIN?
- [ ] How does a NATURAL JOIN work?

---

## Action Items

- [ ] Review lecture recording
- [ ] Review lecture slides
- [ ] Practice writing INSERT, UPDATE, DELETE statements
- [ ] Practice different types of joins

---

## Related Notes

- [[300 Computing/Relational Databases/COMP2400 - Relational Databases|Course Summary]]
- [[300 Computing/Relational Databases/Lectures/Week 03 - SQL Part 2|Week 03 - SQL Part 2]]
- [[300 Computing/Relational Databases/Lectures/Week 03 - SQL Part 3|Week 03 - SQL Part 3]]

---

## References

- Lecture Slides: ![[W3 Lecture Slides.pdf]]
