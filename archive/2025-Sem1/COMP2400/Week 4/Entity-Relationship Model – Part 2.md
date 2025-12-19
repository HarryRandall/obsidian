![[w04l02_er_modelling_concepts.pdf]]

#### Entity Relationship (ER) Model
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

- **Entities**
	- Things in the real world (with independent existence)
	- An individual person
- **Relationships**
	- Associations between entities
	- A person is a friend of another person
- **Attributes**
	- Properties that describe entities and relationships
	- Null values
	- Stores vs derived attributes
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

#### Keys
- The definitions for a superkey, primary key and candidate key of an entity type is the same as for a relation schema.
	- A **superkey** of an entity type is a set of one or more attributes whose values uniquely determine each entity in an entity set.
	- A candidate key of an entity type is a minimal (in terms of number of attributes) superkey.
	- For an entity type, several candidate keys may exist. During conceptual design, one of the candidate keys is selected to be the primary key of the entity type.

#### Constraints on Relationships
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


#### Recursive Relationships
- Same entity types can participate more than once in a relationship type in different roles, e.g., marriage between personas and parent-child between persons.
- A role name signifies the role that a participating entity plays in each relationship.