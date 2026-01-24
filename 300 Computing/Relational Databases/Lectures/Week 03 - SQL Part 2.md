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

# Week 03 - SQL Part 2

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

Detailed coverage of Data Manipulation Language (DML) including INSERT, UPDATE, DELETE statements with examples, primary key violations, foreign key violations, and referential actions (NO ACTION, CASCADE, SET NULL, SET DEFAULT).

---

## Key Concepts

### 1. Data Manipulation Language

- INSERT - the statement is used to add tuples into a relation
- UPDATE - this statement is used to modify attribute values of one or more selected tuples.
- DELETE - This statement is used to remove tuples from a relation
- SELECT

### 2. INSERT Examples

The following three ways of inserting tuples into the relation `Student` are equivalent

### 3. Primary Key Violation

- DBMSs will not allow two tuples with the same primary key value in `Student` and thus will throw a primary key violation.

### 4. Foreign Key Violation

- DBMSs will not allow a tuple in `Enrol` which has a `studentID` not appearing in any tuples of `Student` due to the foreign key `StudentID` $\subseteq$ `Student[StudentID]` on `Enrol`.

### 5. Referential Actions

- Referential actions specify what happens in case of deleting or updating referenced tuples (via foreign key constraints).
- SQL offers the following possibilities:
  1. `{SQL} NO ACTION` (default) will throw an error if one tries to delete a row (or update the primary key value) referenced.
  2. `{SQL} CASCADE` will force the referencing tuples to be deleted (or updated with new primary key value).
  3. `{SQL} SET NULL` will force the corresponding values in the referencing tuples to be set to a null value (i.e., unknown).
  4. `{SQL} SET DEFAULT` will force corresponding values in the referencing tuples to be set to a specified default value.

---

## Notes

![[Week 3 SQL.pdf]]

---

## Examples

> [!example] INSERT Examples
> ```SQL
> INSERT INTO Student
> VALUES (456, 'Tom', '25/01/1988', 'tom@gmail.com'),
> (458, 'Peter', '20/02/1991', 'peter@hotmail.com');
> ```
> 
> ```SQL
> INSERT INTO Student(Name, StudentID, DoB, Email)
> VALUES ('Tom', 456, '25/01/1988', 'tom@gmail.com'),
> ('Peter', 458, '20/02/1991', 'peter@hotmail.com');
> ```
> 
> ```SQL
> INSERT INTO Student
> VALUES (456, 'Tom', '25/01/1988', 'tom@gmail.com');
> INSERT INTO Student
> VALUES (458, 'Peter', '20/02/1991', 'peter@hotmail.com');
> ```

> [!example] Primary Key Violation
> Suppose that we have the relation `Student` with the primary key on `StudentID`:
> 
> | Student_ID | Name  | DoB        | Email             |
> | ---------- | ----- | ---------- | ----------------- |
> | 456        | Tom   | 25/01/1988 | tom@email.com     |
> | 458        | Peter | 20/02/1991 | peter@hotmail.com |
> 
> What should happen if we try to recycle Tom's `StudentID`?
> ```SQL
> INSERT INTO Student(StudentID, Name, DoB, Email)
> VALUES (456, 'Smith', '27/08/1989', 'smith@gmail.com')
> ```
> 
> DBMSs will not allow two tuples with the same primary key value in `Student` and thus will throw a primary key violation.

> [!example] Foreign Key Violation
> Consider the relations `Student`, and `Enrol` with the foreign key `StudentID` $\subseteq$ `Student[StudentID]`.
> 
> | Student_ID | Name  | DoB        | Email             |
> | ---------- | ----- | ---------- | ----------------- |
> | 456        | Tom   | 25/01/1988 | tom@email.com     |
> | 458        | Peter | 20/02/1991 | peter@hotmail.com |
> | 459        | Fran  | 11/09/1987 | frankk@gmail.com  |
> 
> If we only have the above three tuples in `Student`, can we add the following tuple into `Enrol`
> ```SQL
> INSERT INTO Enrol(StudentID, CourseNo, Semester, Status)
> VALUES (460, 'COMP2400', '2016 S2', 'active');
> ```
> 
> DBMSs will not allow a tuple in `Enrol` which has a `studentID` not appearing in any tuples of `Student` due to the foreign key `StudentID` $\subseteq$ `Student[StudentID]` on `Enrol`.

> [!example] UPDATE and DELETE Examples
> If we want to change Tom's email and name stored in the relation `Student`, then we use
> ```SQL
> UPDATE Student
> SET Name='Tom Lee', Email='tom.lee@yahoo.com'
> WHERE StudentID=456;
> ```
> 
> If we want to delete Tom's information from the relation `Student`,  we use 
> ```SQL
> DELETE FROM Student WHERE StudentID=456;
> ```
> 
> We can delete all the tuples in the relation `Student` by using
> ```SQL
> DELETE FROM Student;
> ```

> [!example] DELETE vs DROP TABLE
> What is the difference between the following statements:
> ```SQL
> DELETE FROM Student;
> ```
> ```SQL
> DROP TABLE Student;
> ```
> 
> Answer: The first command deletes all data inside of the table Student, but it maintains all of the columns/attributes. The second command will delete the whole table leaving nothing behind.

> [!example] Referential Actions - NO ACTION
> Consider the following foreign key defined on `Enrol`:
> ```SQL
> FOREIGN KEY(StudentID) REFERENCES STUDENT(StudentID)
> ON DELETE NO ACTION
> ```
> 
> The deletion of a student who has enrolled at least one course will throw out an error concerning the foreign key.

> [!example] Referential Actions - CASCADE
> Consider the following foreign key defined on `Enrol`:
> ```SQL
> FOREIGN KEY(StudentID) REFERENCES STUDENT(StudentID)
> ON DELETE CASCADE
> ```
> 
> Deleting a student in `Student` will also delete all of his enrolled courses in `Enrol`. We would have `Enrol` below after deleting the student 456:
> 
> | StudentID | CourseNo | Semester | Status | EnrolDate  |
> | --------- | -------- | -------- | ------ | ---------- |
> | 458       | COMP1130 | 2016 S1  | ACTIVE | 25/02/2016 |

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| INSERT | Statement used to add tuples into a relation |
| UPDATE | Statement used to modify attribute values of one or more selected tuples |
| DELETE | Statement used to remove tuples from a relation |
| Primary Key Violation | Error when trying to insert a tuple with a duplicate primary key value |
| Foreign Key Violation | Error when trying to insert/update a tuple with a foreign key value that doesn't exist in the referenced table |
| NO ACTION | Referential action that throws an error when trying to delete/update a referenced tuple (default) |
| CASCADE | Referential action that deletes/updates referencing tuples when referenced tuple is deleted/updated |
| SET NULL | Referential action that sets foreign key values to NULL when referenced tuple is deleted/updated |
| SET DEFAULT | Referential action that sets foreign key values to a default value when referenced tuple is deleted/updated |

---

## Questions & Discussion

- [ ] What happens when you try to insert a duplicate primary key?
- [ ] What is the difference between DELETE and DROP TABLE?
- [ ] When would you use CASCADE vs NO ACTION for referential integrity?
- [ ] How do referential actions maintain data consistency?

---

## Action Items

- [ ] Review lecture recording
- [ ] Review lecture slides
- [ ] Practice writing INSERT, UPDATE, DELETE statements
- [ ] Understand referential actions and when to use each type
- [ ] Practice handling constraint violations

---

## Related Notes

- [[300 Computing/Relational Databases/COMP2400 - Relational Databases|Course Summary]]
- [[300 Computing/Relational Databases/Lectures/Week 03 - Lecture 1|Week 03 - Lecture 1]]
- [[300 Computing/Relational Databases/Lectures/Week 03 - SQL Part 3|Week 03 - SQL Part 3]]

---

## References

- Lecture Slides: ![[Week 3 SQL.pdf]]
