Lecture - [link](https://wattlecourses.anu.edu.au/pluginfile.php/3887336/mod_resource/content/11/w02l02.mp4)

---
![[w02l02_handout.pdf]]

- Constraints are conditions that must hold on **all** relations in a database state
- The main types of constraints in the relational data model include
	- Domain constraints
		- Every value in a tuple must be from the domain of its attribute
			- `{SQL} INT
			- `{SQL} VARCHAR
			- `{SQL} DATE
			- `{SQL} SMALLINT
			- `{SQL} NOT NULL
	- Key constraints
		- We observer that data does not occur independently from one another within individual relations
	- Entity integrity constraints
	- Referential integrity constraints

**Example of Key Constraints**

|Student_ID|Name|Email|Phone|Birthdate|
|---|---|---|---|---|
|101|Alice|alice@email.com|9876543210|2000-05-10|
|102|Bob|bob@email.com|9876543211|1999-07-15|
|103|Carol|carol@email.com|9876543212|2001-09-25|

A **superkey** is any set of one or more attributes that **uniquely identifies each row**.

- `{Student_ID}`
- `{Student_ID, Email}`
- `{Student_ID, Phone, Name}`
- `{Email, Phone}`
- `{Student_ID, Name, Email, Phone, Birthdate}`
- `{Name}` → ❌ _Not unique (many students can have the same name)_
- `{Birthdate}` → ❌ _Not unique (students may share a birthdate)_
- `{Name, Birthdate}` → ❌ _Still not unique (two people with the same name can be born on the same date)_

**Key Point:**  
Superkeys may contain extra, unnecessary attributes, but they must uniquely identify rows.

---

A **candidate key** is a **minimal** superkey (i.e., it uniquely identifies rows but has no unnecessary attributes).

- `{Student_ID}` ✅ _(Minimal and unique)_
- `{Email}` ✅ _(Minimal and unique)_
- `{Phone}` ✅ _(Minimal and unique)_
- `{Student_ID, Email}` → ❌ _Not minimal (Student_ID alone is enough)_
- `{Student_ID, Phone, Birthdate}` → ❌ _Not minimal (Student_ID alone is enough)_
- `{Email, Phone}` → ❌ _Not minimal (Email alone is unique)_

---

A **primary key** is a chosen **candidate key** that uniquely identifies each row **and cannot be NULL**.

- `{Student_ID}` ✅ _(Chosen as the primary key, ensures uniqueness)_
- `{Email}` → ❌ _Could be chosen, but if emails can change, it's not ideal_
- `{Phone}` → ❌ _Phone numbers might not be stable (students could change numbers)_
- `{Student_ID, Email}` → ❌ _Valid superkey but not minimal (Student_ID alone works)_

|Key Type|✅ What IS it?|❌ What IS NOT it?|
|---|---|---|
|**Superkey**|`{Student_ID}`, `{Email, Phone}`|`{Name}`, `{Birthdate}`|
|**Candidate Key**|`{Student_ID}`, `{Email}`|`{Student_ID, Email}`, `{Name, Birthdate}`|
|**Primary Key**|`{Student_ID}`|`{Email}`, `{Phone}`, `{Student_ID, Email}`|

---
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
