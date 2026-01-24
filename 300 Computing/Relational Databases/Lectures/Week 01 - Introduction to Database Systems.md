---
course: "[[300 Computing/Relational Databases/COMP2400 - Relational Databases|Relational Databases]]"
type: lecture
date: 2025-02-14
week: 1
session: 1
instructor: Graham Willams
tags:
  - lecture
  - relational-databases
  - database-systems
status: in-progress
---

# Week 01 - Introduction to Database Systems

> [!info] Lecture Details
> **Course:** [[300 Computing/Relational Databases/COMP2400 - Relational Databases|Relational Databases]]
> **Type:** Lecture
> **Date:** Friday, 14 February 2025
> **Week:** 1
> **Lecture #:** 1
> **Instructor:** Graham Willams (School of Computing)
> **Recording:** [Link]()

---

## Overview

Introduction to database systems covering the definition of databases, database management systems (DBMS), the three-level ANSI/SPARC architecture, data independence, and historical development of database models from hierarchical to NoSQL databases.

---

## Key Concepts

### 1. What is a Database?

**Definition:** A **database** is a collection of **related** data.

**Implicit properties:**
* Represents some aspects of the real world;
* A logically coherent collection of data;
* designed and built for a **specific purpose**.

**Examples (Huge):**
- **Amazon**
  - It has 244 million active customers, over 60 million items occupying many terabytes of data (clothing, sports, videos, office products).
- **YouTube**
  - Over 1.3 billion users, 300 hours of videos added every minute, average of one billion mobile YouTube views per day

### 2. What is a Database Management System

* A **database management system** (DBMS) is a collection of programs that enable users to create and maintain a database.
* An analogy for the DBMS is the operating system of a computer

It's a general-purpose software system that facilitates the process of
- **Defining**
  - Specifying data types, structures and constraints.
- **Constructing**
  - Storing data on some storage medium.
- **Manipulating**
  - Retrieving and manipulating data.
- **Sharing**
  - Using data by multiple users/programs simultaneously.

As a whole, the DBMS is the backbone of the Database - without it you couldn't perform any tasks.

Well-known relational DBMSs include:
1. Oracle
2. IBM DB2
3. Microsoft's Access
4. Microsoft's SQL Server
5. MySQL
6. postgresSQL

### 3. What is a Database System

A database system is part of information systems dealing with data retrieval and manipulation.

- It often refers to a DBMS plus a database.

![[Pasted image 20250214121846.png]]

- Main services a database system provides:
  - Answer queries efficiently (searching data)
  - Execute updates efficiently.

### 4. Why is a Database System Needed?

- **Database System**
  - An integrated collection of logically related data.
- **File System**
  - Many separate and unrelated files

Advantages of using a database system:
- **Database redundancy**
  - Data redundancy is controlled to ensure consistency and save the storage space.
- **Data integrity**
  - Some integrity constraints can be enforced automatically by the DBMS
- **Data security**
  - Since the data is managed centrally, the DBMS ensures that the database access is through an authorised channel.

Moreover, the database system also facilitates:
- **Concurrent transactions**
  - Backup and recovery services like data independence.

### 5. Three-level ANSI/SPARC Architecture

1. **Internal Level (Physical Level)**
   * This is the lowest level of the architecture.
   * It describes how data is physically stored on devices (e.g., hard drives, SSD, m.2)
   * Includes details like file structure, indexing, and storage formats.
   * Ensures **efficiency and performance** of data retrieval
2. **Conceptual Level (Logical Level)** 
   - This is the middle level and represents the database as seen by the DBAs (Database administrators)
   - It defines entities, relationships, constraints, and security rules without considering how data is stored.
   - Provides **data independence** by shielding users from physical storage details.
3. **External Level (View Level)**
   - This is the highest level and defines how individual **users or applications** see the data.
   - Different users may have **different views** of the same database, showing only relevant data.
   - Ensures **data security and access control** by restricting access to certain parts of the database.

![[Pasted image 20250214124914.png]]

The three-level architecture provides the following benefits:
- **Data Independence**
  - Changes at one level do not necessarily affect other levels.
- **Security & Privacy**
  - Users can only access data relevant to them.
- **Flexibility**
  - Different views can be created for different users without affecting the database structure.
- **Improved Performance**
  - Optimises how data is stored and retrieved without affecting user views.

- **External Schema**
  - Represents the **user/application perspective**, showing restructured database views for specific applications.
- **Conceptual or Logical Schema**
  - Represents the **community of users' perspective**, describing **data storage and relationships**, independent of physical storage.
- **Internal Schema**
  - Represents the **system implementation perspective**, detailing **how data is physically stored**.

### 6. Data Independence

**Logical Data Independence:**
- This means you can alter the logical structure of the database (the conceptual schema) without affecting the way users see the data (the external schema). 
- For example, adding or removing entities should not impact existing user views.

**Physical Data Independence**
- This means you can change the physical storage details of the database (the internal schema) without impacting the logical structure or user views. 
- For example, reorganising files on disk should not require changes to the conceptual schema.

Essentially, data independence provides flexibility and maintainability by allowing changes at one level of the database without requiring changes at other levels.

---

## Notes

### Historical Remarks

**Hierarchical Databases** 
- The oldest model, dating back to the 1960s. It's exemplified by SABRE, a joint venture between IBM and American Airlines, designed for efficient data retrieval in specific applications. This model structures data in a tree-like hierarchy.

**Network Databases** 
- Developed in the late 1960s as an extension of the hierarchical model. They relaxed the strict tree structure, allowing more complex relationships by connecting records in a network-like fashion.

**Relational Databases** 
- Introduced by Edgar F. Codd in his paper "A Relational Model of Data for Large Shared Data Banks." This model uses tables to represent data and relationships, offering greater flexibility and data independence compared to its predecessors. Key implementations include System R and the widely used SQL (Structured Query Language).

**Object-Oriented Databases** 
- These emerged in the 1980s, driven by the rise of object-oriented programming languages. They are designed to store complex data structures as "objects," mirroring how objects are represented in programming.

**XML Databases** 
- With the growth of the web and the need for standardized data exchange, XML (Extensible Markup Language) became prominent in the 1990s. XML databases are designed specifically to handle XML data efficiently, which is often sparse, nested, and contains mixed content.

**NoSQL Databases** 
- A more recent category, gaining traction since 2009. NoSQL (Not Only SQL) databases encompass a wide range of database technologies that differ from the traditional relational model. The slide indicates that NoSQL databases will be covered later in the course.

In essence, this completes the historical journey, highlighting the evolution beyond relational databases to address specific needs like handling complex objects, web data, and the diverse requirements of modern applications.

---

## Examples

> [!example] Database System Architecture
> The three-level architecture separates concerns: physical storage (internal), logical structure (conceptual), and user views (external), allowing for independent modifications at each level.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Database | A collection of related data representing aspects of the real world |
| DBMS | Database Management System - a collection of programs that enable users to create and maintain a database |
| Database System | A DBMS plus a database |
| Internal Level | The physical level describing how data is stored on storage devices |
| Conceptual Level | The logical level representing the database as seen by DBAs, defining entities and relationships |
| External Level | The view level defining how individual users or applications see the data |
| Logical Data Independence | Ability to alter logical structure without affecting user views |
| Physical Data Independence | Ability to change physical storage without impacting logical structure or user views |

---

## Questions & Discussion

- [ ] What are the advantages of using a database system over file systems?
- [ ] How does the three-level architecture provide data independence?
- [ ] What is the difference between logical and physical data independence?
- [ ] How have database models evolved over time?

---

## Action Items

- [ ] Review lecture recording
- [ ] Understand the three-level architecture
- [ ] Research examples of different database management systems
- [ ] Learn about the historical development of database models

---

## Related Notes

- [[300 Computing/Relational Databases/COMP2400 - Relational Databases|Course Summary]]
- [[300 Computing/Relational Databases/Lectures/Week 01 - Basic Maths|Week 01 - Basic Maths]]
- [[300 Computing/Relational Databases/Lectures/Week 01 - Lecture 1|Week 01 - Lecture 1]]

---

## References

- Lecture slides and materials
