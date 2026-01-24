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
  - queries
  - select
status: in-progress
---

# Week 03 - SQL Part 3

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

Introduction to SQL SELECT queries covering basic SELECT statement syntax, attribute selection, table qualification, aliases, DISTINCT keyword, and WHERE clause with various conditions.

---

## Key Concepts

### 1. Simple SQL Queries

- SQL provides the `{SQL} SELECT` statement for retrieving data from a database.
- The `{SQL} SELECT` statement has the following basic form:
```SQL
SELECT attribute_list
     FROM table_list
  [WHERE condition]
[GROUP BY attribute_list [HAVING group_condition]]
[ORDER BY attribute_list];
```
- Only `{SQL} SELECT` and `{SQL} FROM` are mandatory
- The symbol `*` means all the attributes
- Attribute names may be qualified with the table name (required, if attribute names are not unique).
- Attribute and table names can be given an alias.
- `{SQL} DISTINCT` is used for removing duplicate tuples in the query result.

### 2. WHERE Clause

- Unspecified `{SQL}WHERE` clause means no condition
- All tuples of a relation in the `{sql}FROM` clause are selected.
- If multiple relations are specified in the `{SQL}FROM` clause without join conditions, the Cartesian product of relations is selected.

- The condition in the `{SQL}WHERE` clause can be simple or complicated

---

## Notes

---

## Examples

> [!example] SELECT All Attributes
> | StudentID | CourseNo | Semester | Status | EnrolDate  |
> | --------- | -------- | -------- | ------ | ---------- |
> | 456       | COMP1130 | 2016 S1  | ACTIVE | 25/02/2016 |
> | 458       | COMP1130 | 2016 S1  | ACTIVE | 25/02/2016 |
> | 456       | COMP2400 | 2016 S2  | ACTIVE | 09/09/2016 |
> 
> ```SQL
> SELECT * FROM ENROL
> ```
> 
> | StudentID | CourseNo | Semester | Status | EnrolDate  |
> | --------- | -------- | -------- | ------ | ---------- |
> | 456       | COMP1130 | 2016 S1  | ACTIVE | 25/02/2016 |
> | 458       | COMP1130 | 2016 S1  | ACTIVE | 25/02/2016 |
> | 456       | COMP2400 | 2016 S2  | ACTIVE | 09/09/2016 |

> [!example] SELECT Specific Attributes
> | StudentID | CourseNo | Semester | Status | EnrolDate  |
> | --------- | -------- | -------- | ------ | ---------- |
> | 456       | COMP1130 | 2016 S1  | ACTIVE | 25/02/2016 |
> | 458       | COMP1130 | 2016 S1  | ACTIVE | 25/02/2016 |
> | 456       | COMP2400 | 2016 S2  | ACTIVE | 09/09/2016 |
> 
> ```SQL
> SELECT ENROL.StudentID, Semester FROM ENROL;
> ```
> 
> | StudentID | Semester |
> | --------- | -------- |
> | 456       | 2016 S1  |
> | 458       | 2016 S1  |
> | 456       | 2016 S2  |

> [!example] SELECT with Aliases
> | StudentID | CourseNo | Semester | Status | EnrolDate  |
> | --------- | -------- | -------- | ------ | ---------- |
> | 456       | COMP1130 | 2016 S1  | ACTIVE | 25/02/2016 |
> | 458       | COMP1130 | 2016 S1  | ACTIVE | 25/02/2016 |
> | 456       | COMP2400 | 2016 S2  | ACTIVE | 09/09/2016 |
> 
> ```SQL
> SELECT e.StudentID as SID, e.Semester FROM ENROL e;
> ```
> 
> | SID | Semester |
> | --- | -------- |
> | 456 | 2016 S1  |
> | 458 | 2016 S1  |
> | 456 | 2016 S2  |

> [!example] WHERE Clause Examples
> ```SQL
> SELECT * FROM Student;
> SELECT * FROM Student, Course;
> SELECT * FROM Student WHERE StudentID BETWEEN 100 AND 500;
> SELECT * FROM Student WHERE Email is NOT NULL;
> SELECT * FROM Student WHERE Email like '%@gmail.com';
> ```

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| SELECT | Statement used to retrieve data from a database |
| FROM | Clause specifying the table(s) to query from |
| WHERE | Optional clause specifying conditions for filtering rows |
| * | Symbol meaning all attributes |
| DISTINCT | Keyword used to remove duplicate tuples from query results |
| Alias | Alternative name given to an attribute or table |
| Cartesian Product | Result when multiple relations are specified in FROM without join conditions |

---

## Questions & Discussion

- [ ] What is the basic structure of a SELECT statement?
- [ ] When do you need to qualify attribute names with table names?
- [ ] What happens if you specify multiple tables in FROM without join conditions?
- [ ] How does the WHERE clause filter results?

---

## Action Items

- [ ] Review lecture recording
- [ ] Practice writing SELECT queries
- [ ] Practice using WHERE clauses with different conditions
- [ ] Understand when to use aliases
- [ ] Practice using DISTINCT

---

## Related Notes

- [[300 Computing/Relational Databases/COMP2400 - Relational Databases|Course Summary]]
- [[300 Computing/Relational Databases/Lectures/Week 03 - Lecture 1|Week 03 - Lecture 1]]
- [[300 Computing/Relational Databases/Lectures/Week 03 - SQL Part 2|Week 03 - SQL Part 2]]

---

## References

- Lecture materials
