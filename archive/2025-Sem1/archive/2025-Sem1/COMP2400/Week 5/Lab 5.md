#### ER Modeling

In this week’s lab, we will use the Entity-Relationship (ER) modeling approach to conduct the conceptual design for a database application.

---
#### 1. ER Modeling Question

Consider the following data requirements for a university project database:

- Academics have a University ID number (UID), a name, an age, a level, and a research specialty.
	1. Entity Type
		1. Academic
	2. Relationship Types
		1. Works / manages multiples projects
		2. Schools have one
		3. Must supervise students work on a project
		4. Is one per project, but the student can have many projects.
		5. Work in one or more schools (each school they work in there is a time % associated with their job).
		6. One Academic will run the School
	3. Attributes
		1. Academic
			1. UID -> VARINT
			2. NAME -> STRING
			3. AGE -> VARINT
			4. LEVEL -> STRING 
			5. RESEARCH SPECIALITY -> STRING
		2. Relationships
			1. Manages
			2. Works on
			3. Works in -> % of time spent
			4. Supervises
			5. Heads 
	4. Primary Key
		1. UID
	5. Identify cardinality ratios or particpation constraints
		1. Mangages -> 1:N (1 person manages )

- Projects have a project number, a funder name, a start date, an end date, and a budget.

- Research students (also called “HDR students”) have a UID, a name, an age, and a degree program (M.S. or Ph.D.).

- Each project is managed by one academic (known as the project’s chief investigator).

- Each project is worked on by one or more academics (known as the project’s co-investigators).

- Academics can manage and/or work on multiple projects.

- Each project is worked on by zero or more research students (known as the project’s research assistants).

- When research students work on a project, an academic must supervise their work on that project. Research students can work on multiple projects, in which case they will have a (potentially different) supervisor for each one.

- Schools have a name and a main office.

- Schools have an academic (known as the head of school) who runs the school.

- Academics work in one or more schools, and for each school that they work in, a time percentage is associated with their job.

- Research students have one school in which they are enrolled for their research degree.

- Each research student may have another (usually more senior) research student (known as a student advisor) who advises them for part or all of their degree program.

You need to draw an ER diagram to capture the data requirements (if possible) through the following exercises (1)-(5):

1. Identify the entity types.
2. Identify the relationship types.
3. Identify the attributes of the entity and relationship types.
4. Identify a primary key for each entity type.
5. Identify cardinality ratios or participation constraints, if any.

You also need to state the necessary assumptions, if any, to make your modeling solutions complete.

#### 2. Design Choice Questions

The following questions relate to several important design choices you may often come across when designing an ER model.

#### 2.1 Entity versus Attribute

6. Consider the database application described in Section 1. Suppose that we want to record addresses of research students. A student may have more than one address. We also want to capture the structure of an address in terms of city, state, country, and postcode. In this case, should the concept of address be modeled as an attribute or an entity?

#### 2.2 Entity versus Relationship

7. Consider the database application described in Section 1. Suppose that we want to further model the information about a discretionary budget given to academics who manage projects. How would you model this in the following two different cases?
    - **Case 1**: Suppose that each academic is given a discretionary budget for each project they manage, and the budgets may vary in different projects for the same academic.
    - **Case 2**: Suppose that each academic is given a discretionary budget for all projects they manage, regardless of how many projects the academic manages.
![[Pasted image 20250318135717.png]]

#### 2.3 Binary versus Ternary Relationships

8. Consider the database application described in Section 1, and two ER models presented in Figure 2 and Figure 3. For the relationships between academics, projects, and research students, which of the ER models do you prefer to choose? Explain the difference between the data requirements captured by these two ER models.



![[Pasted image 20250318220700.png]]