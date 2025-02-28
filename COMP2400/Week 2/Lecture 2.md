---

---

---
![[Relational_Database_W2L1.pdf]]
#### Housekeeping
1. Weekly online quiz due 12pm Wednesday after watching online lectures
2. Online lectures vs in-person lectures
3. Lecture slides uploaded on Thursday morning

#### Lecture
**Relation vs. Table**
- Column also referred to 'attribute' has a data type ()
	- URL
	- Long Text
	- Short Text
	- ETC
- Rows also known as 'tuple', linked list.

**Domain Contraints**
- Every value in a tuple must be from the domain of its attribute
	- INT
	- VARCHAR
	- DATE
	- SMALLINT
	- NOT NULL

**Entity Integrity Constraint**
- States that no primary key value can be NULL
	- This is because primary key values are used to *identify* individual tuples in a relation
	- If *StudentID* is specified as the primary key of *Student*, then the following relation violates the entity constraint

**Referential Integrity Constraints**
- A referential integrity constraint specifies a reference between two relations
- Data does not occur independently from one another across relations
- AKA: A linked record must exist in a seperate table

**Constraint Violations**
- There are three basic operations that can change a database state
	1. Insert: Insert one or more new tuples in relation;
	2. Delete: delete tuples in relation
	3. Update (or Modify): Change the values of attribute sin existing tuples.
- Whenever these operations are applied, the integrity constraints specified in a database schema should not be violated.
- 

**Superkey** is just what primary key you want to use (if it's valid)