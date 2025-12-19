![[Relational_Database_W4.pdf]]

#### Assignment 1
- Due Week 6 Friday 28/03/2025

#### Entity Relationship (ER) Model
- A model is a simplifications of reality, often represented as a graphical depiction of data. It helps us to understand, specify, and build a system.
- The components of ER Model:
	- **Entity** - "things" in the real world (with independent existence.)
		- A student or course
	- **Relationship** - Associations between entities
		- A student enrols in one course
	- **Attributes** - Properties that describe entities and relationships
		- Student has attributes like StudentID, Name, Age
	- Key attributes - attributes that identify an entity instance uniquely
		- StudentID uniquely identifies a student

#### Keys
- The definition for **superkey**, **primary key**, and **candidate key** or an entity type is the same as for a relation schema.
	- A **superkey** of an entity type is a set of one or more attributes whose values uniquely determine each entity set.
	- A **candidate key** of an enetity type is a minimal (in terms of number of attributes) superkey.
	- A **primary key** of a relationship type is the combination of primary keys of the entity types that particpate in the relationship type. 