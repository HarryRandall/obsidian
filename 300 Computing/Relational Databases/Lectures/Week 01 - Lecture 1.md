---
course: "[[300 Computing/Relational Databases/COMP2400 - Relational Databases|Relational Databases]]"
type: lecture
date: 2025-02-10
week: 1
session: 1
instructor: Mengxuan Zhang
tags:
  - lecture
  - relational-databases
  - course-introduction
status: in-progress
---

# Week 01 - Lecture 1

> [!info] Lecture Details
> **Course:** [[300 Computing/Relational Databases/COMP2400 - Relational Databases|Relational Databases]]
> **Type:** Lecture
> **Date:** Monday, 10 February 2025
> **Week:** 1
> **Lecture #:** 1
> **Instructor:** Mengxuan Zhang (Backup lecturer: Patrik Haslum)
> **Recording:** [Link]()

---

## Overview

Course introduction covering data types, motivations for studying databases, databases in real-world applications, course expectations, learning methods, lab environment setup, and assessment breakdown.

---

## Key Concepts

### 1. Data and Database

**Structured Data**
- Has the same defined format (e.g., relational database)

**Semi-structured data**
- Taxonomies (a hierarchical structure that organises the given data in parent-child relationships, based on the inherent concepts present in the data)
- They have some certain structure
- This structure is not identical
- An example is XML

**Unstructured data**
- Does not have any predefined format
- An example is plain text

### 2. Motivations for Studying Databases

Databases can support
1. Data management
2. Data analysis

Current trends
- Small data -> big data

### 3. Databases in our lives

**Commbank**
- **What kind of data does it need to store?**
  Customer information, balances, transactions, and more.
- **What kind of queries does it need to answer?**
  When someone wants to look at their transaction history it needs to query all of the users recent transactions.
- **What is the role of databases in it?**
  To maintain all of the data in which involve the client.
- **Why do we need to organise data in databases?**
  So it's accessible to the DBMS when it's being queried. 

### 4. What are you expected to do

- Read course information and announcements.
- Watch (or read) the self-study material every week, complete quizzes, and provide feedback if you want us to adapt lecture content.
- Engage: work on lab exercises and practice questions (Databench and other), ask and answer questions on the forum.
- Known and follow policies on course communication, academic integrity, deadlines, and deferrals.

### 5. How will you learn?

- Self study through pre-recorded lectures, reading and quizzes - complete before Wednesday noon each week
- Lectures in person
- Tutorials/Labs (can show up to any tutorial)
- Drop in sessions
- Discussions forum

### 6. Lab Environment

- We will use open source relational database management system Postgres.
- A PostgreSQL server is installed on SoCo lab system, and can be accessed from any lab computer and the student remote login server (partch.anu.edu.au).
- The PostgreSQL Docs is recommended for additional reading. It includes an excellent SQL reference.
  - https://www.postgresql.org/docs/15/index.html
- The PostgreSQL software and other resources is available from the PostgreSQL website.
  - https://www.postgresql.org

### 7. Assessment Breakdown

- 5% - Quizzes and Labs
  - Best 6 out of 10 quizzes
  - Best 4 out of 8 engagement labs
- 18% - Assignment 1
  - Assessment on SQL
- 17% Assignment 2
  - Assignment on database theory
- 60% Final exam
  - At the end of the semester

---

## Notes

---

## Examples

> [!example] Database Usage - Commbank
> Commbank uses databases to store customer information, account balances, and transaction history, enabling efficient querying of user transaction data.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Structured Data | Data with the same defined format (e.g., relational database) |
| Semi-structured Data | Data with some structure but not identical format (e.g., XML, taxonomies) |
| Unstructured Data | Data with no predefined format (e.g., plain text) |
| PostgreSQL | Open source relational database management system used in the course |

---

## Questions & Discussion

- [ ] What are the different types of data and how do they differ?
- [ ] Why are databases important in modern applications?
- [ ] What are the course expectations and assessment requirements?

---

## Action Items

- [ ] Review course information and announcements
- [ ] Set up PostgreSQL lab environment
- [ ] Complete self-study materials before Wednesday noon each week
- [ ] Familiarize yourself with course policies

---

## Related Notes

- [[300 Computing/Relational Databases/COMP2400 - Relational Databases|Course Summary]]
- [[300 Computing/Relational Databases/Lectures/Week 01 - Basic Maths|Week 01 - Basic Maths]]
- [[300 Computing/Relational Databases/Lectures/Week 01 - Introduction to Database Systems|Week 01 - Introduction to Database Systems]]

---

## References

- PostgreSQL Documentation: https://www.postgresql.org/docs/15/index.html
- PostgreSQL Website: https://www.postgresql.org
