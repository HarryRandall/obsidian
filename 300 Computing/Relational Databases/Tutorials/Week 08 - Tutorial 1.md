---
course: "[[300 Computing/Relational Databases/COMP2400 - Relational Databases|Relational Databases]]"
type: tutorial
date: 2025-03-24
week: 8
session: 1
instructor: 
tags:
  - tutorial
  - relational-databases
  - keys
  - functional-dependencies
status: in-progress
---

# Week 08 - Tutorial 1

> [!info] Tutorial Details
> **Course:** [[300 Computing/Relational Databases/COMP2400 - Relational Databases|Relational Databases]]
> **Type:** Tutorial
> **Date:** Monday, 24 March 2025
> **Week:** 8
> **Tutorial #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Tutorial covering candidate keys, superkeys, primary keys, and functional dependencies with examples and exercises.

---

## Key Concepts

### 1. Key Relationships

- The primary key is always a candidate key
- A super key is a subset of a candidate key

### 2. Candidate Keys

1. Candidate Keys
   - {PropertyNo, Date}: Guaranteed by the schema.
   - {Date, StaffNo} \{ \text{Date, StaffNo} \} {Date, StaffNo}: Based on data uniqueness.
   - {Date, Time} \{ \text{Date, Time} \} {Date, Time}: Based on data uniqueness.

### 3. Functional Dependencies

2. Is the set of given FDs minimal?
   - {PropertyNo} → {Address}
   - {StaffNo} → {StaffName}
   - {PropertyNo, Date} → {StaffNo, Time}
   - {StaffNo, Date} → {CameraID}
   - {StaffNo, Date, Time} → {PropertyNo}
   - {Date, Time, CameraID} → {PropertyNo}

---

## Notes

![[Lab6.pdf]]

---

## Examples

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Primary Key | Always a candidate key |
| Superkey | A subset of a candidate key |
| Candidate Key | A minimal set of attributes that uniquely identifies each row |
| Functional Dependency | A constraint that specifies the relationship between attributes |

---

## Questions & Discussion

- [ ] What is the relationship between primary keys, candidate keys, and superkeys?
- [ ] How do you identify candidate keys?
- [ ] What makes a set of functional dependencies minimal?

---

## Action Items

- [ ] Review tutorial materials
- [ ] Complete tutorial exercises
- [ ] Practice identifying candidate keys and superkeys
- [ ] Understand functional dependencies

---

## Related Notes

- [[300 Computing/Relational Databases/COMP2400 - Relational Databases|Course Summary]]
- [[300 Computing/Relational Databases/Lectures/Week 07 - Relational Algebra|Week 07 - Relational Algebra]]

---

## References

- Tutorial Materials: ![[Lab6.pdf]]
