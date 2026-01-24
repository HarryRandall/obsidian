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
  - sql
  - ddl
status: in-progress
---

# Week 02 - SQL Introduction

> [!info] Lecture Details
> **Course:** [[300 Computing/Relational Databases/COMP2400 - Relational Databases|Relational Databases]]
> **Type:** Lecture
> **Date:** Monday, 17 February 2025
> **Week:** 2
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link](https://wattlecourses.anu.edu.au/pluginfile.php/3887338/mod_resource/content/12/w02l03.mp4)

---

## Overview

Introduction to SQL (Structured Query Language) covering CREATE TABLE syntax, data types (numeric, string, date), attribute constraints, unique and primary key constraints, foreign key constraints, indexes, and Data Definition Language (DDL) operations including ALTER TABLE and DROP TABLE.

---

## Key Concepts

### 1. SQL Overview

- SQL is a Structured Query Language
- Unlike the relational data model that is based on sets, SQL is based on multisets. It means that SQL allows a relation to have duplicate tuples.

### 2. CREATE TABLE Syntax

The `{SQL} CREATE TABLE` statement is used to create a new relation schema by specifying its name, its attributes and, optionally, its constraints

```SQL
CREATE TABLE table_name (attribute_name data_type [attribute constraints], ...,attribute_name data_type [attribute constraints]);
```

- For each attribute in a relation, we specify its name, its type and, optionally, a constraint to the attribute (i.e., attribute constraint).

### 3. Numeric Data Types

- `{SQL} INT` and `{SQL} SMALLINT` provide domains for integer values of various sizes.
- `{SQL} FLOAT` (or `{SQL} REAL`) and `{SQL} DOUBLE PRECISION` provide floating‑point numbers of varying precision.
- `{SQL} NUMERIC(i, j)` (or `{SQL} DECIMAL(i, j)`) provides fixed‑point numbers with a total precision of _i_ digits and a scale of _j_ digits (i.e. _j_ digits after the decimal point).

### 4. String Data Types

- `{SQL} CHAR(n)` allows fixed‑length character strings, where _n_ is the number of characters.
- `{SQL} VARCHAR(n)` allows variable‑length character strings, where _n_ is the maximum number of characters.
- `{SQL} BIT(n)` allows bit strings of fixed length, where *n* is the number of bits.
- `{SQL} BIT VARYING(n)`allows bit strings of varying length, where *n* is the maximum number of bits.

### 5. Date Data Types

- `{SQL} DATE` provides date values (Year, Month, Day).
- `{SQL} TIME` provides time values (Hour, Minute, Second).
- `{SQL} TIMESTAMP` includes the `{SQL} DATE` and `{SQL} TIME` fields, plus a minimum of six positions for seconds and optional `{SQL} WITH TIME ZONE` qualifier.
- `{SQL} INTERVAL` specifies a relative value that can be used to increment or decrement a value of `{SQL} DATE`, `{SQL} TIME`, or `{SQL} TIMESTAMP`.
- **Boolean type** has the value of `{python} TRUE` or `{python} FALSE`.

The `{SQL} CREATE DOMAIN` is used to create a domain that is essentially a specific data type.

```SQL
CREATE DOMAIN domain_name AS data_type [default expression][constraint, ..., constraint];
```

### 6. Attribute Constraints

The following constraints can be specified in SQL
- `{SQL} NOT NULL` specify that `{SQL} NULL` is not allowed for an attribute
- `{SQL} DEFAULT` set a default value for an attribute
- `{SQL} CHECK` limit the values taken from the domain of an attribute.
- `{SQL} UNIQUE` ensure that uniqueness of the values for an attribute or a set of attribute in a table.
- `{SQL} PRIMARY KEY` uniquely identify each tuple in a table.
- `{SQL} FOREIGN KEY` enforce referential integrity between two tables
- `{SQL} INDEX` provides accelerated access to the rows of table.

### 7. Unique and Primary Key Constraints

- If a primary key contains only one attribute, PRIMARY KEY can be defined as an attribute constraint (e.g., in  `{SQL} Course`); otherwise it's defined as a table constraint (e.g., in  `{SQL} Enrol`)
- `{SQL} PRIMARY KEY` specifies a key while `{SQL} UNIQUE`specifies additional keys.

### 8. Foreign Key Constraints

- Every `StudentID`appearing in `Enrol` must exist in `Student`
- Every `CourseNo` appearing in `Enrol` must exist in `Course`

- Can we define`Enrol` before `Student` and `Course`?
- No, `Enrol` has the foreign keys that reference `Student` and `Course`.

### 9. Indexes

- Indexes are used for fast retrieval based on columns other than the primary key.

### 10. Data Definition Language (DDL)

The `{SQL} ALTER TABLE` statement is used to modify an existing relation schema, including:
- Changing the name of a table;
- Adding or dropping an attribute;
- Changing the definition of an attribute;
- Adding or dropping table constraints.

The `{SQL} DROP TABLE` statement is used to remove an existing relation schema from a database schema.

---

## Notes

---

## Examples

> [!example] CREATE TABLE Examples
> ```SQL
> CREATE TABLE Student (StudentID INT, Name VARCHAR(50), DoB Date, Email VARCHAR(100));
> ```
> 
> ```SQL
> CREATE TABLE Course (No VARCHAR(20), Cname VARCHAR(50), Unit SMALLINT);
> ```
> 
> ```SQL
> CREATE TABLE Course (No VARCHAR(20) PRIMARY KEY, Cname VARCHAR(50) not null, Unit SMALLINT not null Default 6);
> ```
> 
> ```SQL
> CREATE TABLE Enrol (StudentID INT not null CHECK (StudentID>0), CourseNo VARCHAR(20) not null, Semester VARCHAR(50) not null, Status VARCHAR(50), PRIMARY KEY(StudentID, CourseNo, Semester), ...);
> ```

> [!example] Foreign Key Example
> ```SQL
> CREATE TABLE Enrol ( StudentID INT, CourseNo VARCHAR(20), Semester VARCHAR(50), Status VARCHAR(50),                               FOREIGN KEY(StudentID) REFERENCES Student(StudentID),          FOREIGN KEY(CourseNo) REFERENCES Course(No));
> ```

> [!example] Index Example
> ```SQL
> CREATE TABLE Customer (CustomerID INT not null, Name VARCHAR(50) not null, DOB DATE not null, Address VARCHAR(80), Phone INT CHECK (Phone>0), PRIMARY KEY(CustomerID)); 
> CREATE INDEX index1 ON Customer (Name, DOB); 
> CREATE UNIQUE INDEX index2 ON Customer (Phone);
> ```

> [!example] ALTER TABLE Examples
> Add a `NOT NULL` constraint:
> ```SQL
> ALTER TABLE Customer ALTER COLUMN Address SET NOT NULL;
> ```
> 
> Add a `UNIQUE` constraint:
> ```SQL
> ALTER TABLE Customer ADD UNIQUE(Phone);
> ```
> 
> Add a `check()` constraint:
> ```SQL
> ALTER TABLE Customer 
> ADD CONSTRAINT positive_id CHECK (CustomerID > 0);
> ```
> 
> Add a `Foreign Key` constraint:
> ```SQL
> ALTER TABLE Enrol 
> ADD FOREIGN KEY(StudentID) REFERENCES Student(StudentID);
> ```
> 
> Add an attribute Email into the table Customer:
> ```SQL
> ALTER TABLE Customer 
> ADD Email VARCHAR(100);
> ```
> 
> Drop the attribute Email from the table Customer:
> ```SQL
> ALTER TABLE Customer 
> DROP COLUMN Email;
> ```
> 
> Drop the table Enrol:
> ```SQL
> DROP TABLE Enrol;
> ```
> 
> Drop the table Customer (if it exists):
> ```SQL
> DROP TABLE IF EXISTS Customer;
> ```

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| SQL | Structured Query Language - based on multisets (allows duplicate tuples) |
| CREATE TABLE | Statement used to create a new relation schema |
| Data Type | Specifies the domain of values for an attribute (INT, VARCHAR, DATE, etc.) |
| NOT NULL | Constraint specifying that NULL is not allowed for an attribute |
| DEFAULT | Constraint setting a default value for an attribute |
| CHECK | Constraint limiting the values taken from the domain of an attribute |
| UNIQUE | Constraint ensuring uniqueness of values for an attribute or set of attributes |
| PRIMARY KEY | Constraint uniquely identifying each tuple in a table |
| FOREIGN KEY | Constraint enforcing referential integrity between two tables |
| INDEX | Provides accelerated access to rows of a table |
| ALTER TABLE | Statement used to modify an existing relation schema |
| DROP TABLE | Statement used to remove an existing relation schema |

---

## Questions & Discussion

- [ ] What is the difference between SQL and the relational data model in terms of duplicate tuples?
- [ ] When should you use CHAR vs VARCHAR?
- [ ] What is the purpose of indexes?
- [ ] How do you modify an existing table structure?

---

## Action Items

- [ ] Review lecture recording
- [ ] Review handout materials
- [ ] Practice writing CREATE TABLE statements
- [ ] Practice using ALTER TABLE and DROP TABLE
- [ ] Understand different data types and when to use them

---

## Related Notes

- [[300 Computing/Relational Databases/COMP2400 - Relational Databases|Course Summary]]
- [[300 Computing/Relational Databases/Lectures/Week 02 - Lecture 1|Week 02 - Lecture 1]]
- [[300 Computing/Relational Databases/Lectures/Week 02 - Relational Data Model Part 1|Week 02 - Relational Data Model Part 1]]
- [[300 Computing/Relational Databases/Lectures/Week 02 - Relational Data Model Part 2|Week 02 - Relational Data Model Part 2]]

---

## References

- Lecture Recording: [Link](https://wattlecourses.anu.edu.au/pluginfile.php/3887338/mod_resource/content/12/w02l03.mp4)
- Handout: ![[w02l03_handout.pdf]]
