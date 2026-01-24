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
  - entities
  - relationships
  - attributes
status: in-progress
---

# Week 04 - ER Model Part 2

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

Detailed introduction to the Entity-Relationship (ER) Model covering its history, data structure, data integrity, entities, relationships, attributes, domains, keys, and constraints on relationships including cardinality ratios and participation constraints.

---

## Key Concepts

### 1. Entity Relationship (ER) Model

- Originally proposed by Peter Chen in 1976
  - Shortly after its introduction, the ER model became the most popular data model used in conceptual database design.
- A data model normally has three key aspects:
  1. **Data Structure** - data in the ER model is represented as entities and relationships with attributes. 
  2. **Data Integrity** - for the ER model, keys are for entity/relationship types, and cardinality, participation constraints for the relationship types.
  3. **Data manipulation** - no standard data manipulation operates are associated with the ER mode.

- There are a number of ER diagrammatic notations available - we are going to closely follow the one used by Chen and it's variations which includes:
  - **Attributes** - represented by ovals.
  - **Key attributes** (primary key?) - underlined
  - **Entity types** - are represented as rectangles.
  - **Relationship types** - represented as diamonds.

### 2. Entities, Relationships, and Attributes

- **Entities**
  - Things in the real world (with independent existence)
  - An individual person
- **Relationships**
  - Associations between entities
  - A person is a friend of another person
- **Attributes**
  - Properties that describe entities and relationships
  - Null values
  - Stored vs derived attributes
  - Single-valued vs multivalued attributes
- **Domains of attributes**
  - For each attributes, a domain is associated

![[Pasted image 20250315143537.png]]

- **Entity** - Employee (as it's in the rectangle)
- **Attributes**
  - **SSN** - Primary key as it's underlined.
  - **Name** - Normal attribute.
  - **Address** - multivalued attributes meaning that an employee can have multiple addresses. 
  - **Salary** - Normal attribute.

### 3. Keys

- The definitions for a superkey, primary key and candidate key of an entity type is the same as for a relation schema.
  - A **superkey** of an entity type is a set of one or more attributes whose values uniquely determine each entity in an entity set.
  - A candidate key of an entity type is a minimal (in terms of number of attributes) superkey.
  - For an entity type, several candidate keys may exist. During conceptual design, one of the candidate keys is selected to be the primary key of the entity type.

### 4. Constraints on Relationships

- **Cardinality ratios** specifies the maximum number of relationships that an entity can participate in.

1. Many-To-Many
   Means an employee can work for many departments ($\ge$ 0), and a department can have several employees.
   ![[Pasted image 20250323100915.png]]

2. One-To-Many
   Meaning an employee can work for at most one department ($\leq$ 1), and a department can have several employees.
   ![[Pasted image 20250323102354.png]]

3. One-To-One
   Meaning an employee can work for at most one department, and a department can have at most one employee.
   ![[Pasted image 20250323102436.png]]

- **Participation constraints** (total, partial) specifies whether the existence of any entity depends on its being related to another entity via the relationship type

1. Total
   Means that each employee MUST work for a department and each department may or may not have employees.
   ![[Pasted image 20250323102548.png]]

2. Partial (default)
   Means that an employee may or may not work for a department and each department may or may not have employees.
   ![[Pasted image 20250323102615.png]]

### 5. Recursive Relationships

- Same entity types can participate more than once in a relationship type in different roles, e.g., marriage between persons and parent-child between persons.
- A role name signifies the role that a participating entity plays in each relationship.

---

## Notes

![[w04l02_er_modelling_concepts.pdf]]

---

## Examples

> [!example] ER Diagram Notation
> - Attributes are represented by ovals
> - Key attributes (primary keys) are underlined
> - Entity types are represented as rectangles
> - Relationship types are represented as diamonds

> [!example] Cardinality Ratios
> - Many-to-Many: An employee can work for many departments, and a department can have several employees
> - One-to-Many: An employee can work for at most one department, and a department can have several employees
> - One-to-One: An employee can work for at most one department, and a department can have at most one employee

> [!example] Participation Constraints
> - Total: Each employee MUST work for a department
> - Partial: An employee may or may not work for a department (default)

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Entity | Things in the real world with independent existence |
| Relationship | Associations between entities |
| Attribute | Properties that describe entities and relationships |
| Key Attribute | Attribute that uniquely identifies an entity (underlined in ER diagrams) |
| Multivalued Attribute | Attribute that can have multiple values for a single entity |
| Cardinality Ratio | Specifies the maximum number of relationships that an entity can participate in |
| Many-to-Many | Relationship where entities can participate in multiple relationships |
| One-to-Many | Relationship where one entity can relate to many, but many can only relate to one |
| One-to-One | Relationship where each entity can relate to at most one other entity |
| Participation Constraint | Specifies whether the existence of an entity depends on its relationship to another entity |
| Total Participation | Entity MUST participate in the relationship |
| Partial Participation | Entity may or may not participate in the relationship (default) |
| Recursive Relationship | Relationship where the same entity type participates more than once in different roles |

---

## Questions & Discussion

- [ ] What are the main components of an ER model?
- [ ] How do cardinality ratios differ from participation constraints?
- [ ] What is a recursive relationship?
- [ ] When would you use total vs partial participation?

---

## Action Items

- [ ] Review lecture recording
> - [ ] Review lecture slides
- [ ] Practice drawing ER diagrams
- [ ] Understand cardinality ratios and participation constraints
- [ ] Practice identifying entities, relationships, and attributes

---

## Related Notes

- [[300 Computing/Relational Databases/COMP2400 - Relational Databases|Course Summary]]
- [[300 Computing/Relational Databases/Lectures/Week 04 - ER Model Part 1|Week 04 - ER Model Part 1]]
- [[300 Computing/Relational Databases/Lectures/Week 04 - ER Model Part 3|Week 04 - ER Model Part 3]]
- [[300 Computing/Relational Databases/Lectures/Week 04 - ER Model Part 4|Week 04 - ER Model Part 4]]
- [[300 Computing/Relational Databases/Lectures/Week 04 - Slides Notes|Week 04 - Slides Notes]]

---

## References

- Lecture Slides: ![[w04l02_er_modelling_concepts.pdf]]
