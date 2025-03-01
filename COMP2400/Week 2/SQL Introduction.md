Lecture - [link](https://wattlecourses.anu.edu.au/pluginfile.php/3887338/mod_resource/content/12/w02l03.mp4)

---
![[w02l03_handout.pdf]]

- SQL is a Structured Query Language
- Unlike the relational data model that is based on sets, SQL is based on multisets. It means that SQL allows a relation to have duplicate tuples.

#### Syntax 
- The `{SQL} CREATE TABLE` statement is used to create a new relation schema by specifying its name, its attributes and, optionally, its constraints
```SQL
CREATE TABLE table_name (attribute_name data_type [attribute constraints], ...,attribute_name data_type [attribute constraints]);
```
- For each attribute in a relation, we specify its name, its type and, optionally, a constraint to the attribute (i.e., attribute constraint).

**Examples**
```SQL
CREATE TABLE Student (StudentID INT, Name VARCHAR(50), DoB Date, Email VARCHAR(100));
```

```SQL
CREATE TABLE Course (No VARCHAR(20), Cname VARCHAR(50), Unit SMALLINT);
```

```SQL
CREATE TABLE Enrol (StudentID INT, CourseNo VARCHAR(20), CourseNo VARCHAR(50), Status VARCHAR(50));
```

#### Numeric Data Types
- `{SQL} INT` and `{SQL} SMALLINT` provide domains for integer values of various sizes.
- `{SQL} FLOAT` (or `{SQL} REAL`) and `{SQL} DOUBLE PRECISION` provide floating‑point numbers of varying precision.
- `{SQL} NUMERIC(i, j)` (or `{SQL} DECIMAL(i, j)`) provides fixed‑point numbers with a total precision of _i_ digits and a scale of _j_ digits (i.e. _j_ digits after the decimal point).

#### String Data Types
- `{SQL} CHAR(n)` allows fixed‑length character strings, where _n_ is the number of characters.
- `{SQL} VARCHAR(n)` allows variable‑length character strings, where _n_ is the maximum number of characters.
- `{SQL} BIT(n)` allows bit strings of fixed length, where *n* is the number of bits.
- `{SQL} BIT VARYING(n)`allows bit strings of varying length, where *n* is the maximum number of bits.

#### Date Data Types
- `{SQL} DATE` provides date values (Year, Month, Day).
- `{SQL} TIME` provides time values (Hour, Minute, Second).
- `{SQL} TIMESTAMP` includes the `{SQL} DATE` and `{SQL} TIME` fields, plus a minimum of six positions for seconds and optional `{SQL} WITH TIME ZONE` qualifier.
- `{SQL} INTERVAL` specifies a relative value that can be used to increment or decrement a value of `{SQL} DATE`, `{SQL} TIME`, or `{SQL} TIMESTAMP`.
- **Boolean type** has the value of `{python} TRUE` or `{python} FALSE`.
- The `{SQL} CREATE DOMAIN` is used to create a domain that is essentially a specific data type.
```SQL
CREATE DOMAIN domain_name AS data_type [default expression][constraint, ..., constraint];
```

```SQL
CREATE DOMAIN ssn_type AS CHAR(9);
```

#### Attribute Constraints
- The following constraints can be specified in SQL
- `{SQL} NOT NULL` specify that `{SQL} NULL` is not allowed for an attribute
- `{SQL} DEFAULT` set a default value for an attribute
- `{SQL} CHECK` limit the values taken from the domain of an attribute.
- `{SQL} UNIQUE` ensure that uniqueness of the values for an attribute or a set of attribute in a table.
- `{SQL} PRIMARY KEY` uniquely identify each tuple in a table.
- `{SQL} FOREIGN KEY` enforce referential integrity between two tables
- `{SQL} INDEX` provides accelerated access to the rows of table.
```SQL
CREATE TABLE Course (No VARCHAR(20) PRIMARY KEY, Cname VARCHAR(50) not null, Unit SMALLINT not null Default 6);
```

```SQL
CREATE TABLE Enrol (StudentID INT not null CHECK (StudentID>0), CourseNo VARCHAR(20) not null, Semester VARCHAR(50) not null, Status VARCHAR(50), ...);
```

- If we don't want to have missing and unknown data, we can specify `{SQL} NOT NULL` for attributes to forbid `{SQL} NULL` values.
- Unit of any new tuple in `{SQL} COURSE` is set to 6 if no explicit value is provided.
- `{SQL} CHECK()` for StudentID excludes the student IDs such as 0 and -37.

#### Unique and Primary Key Constraints
```SQL
CREATE TABLE Course (No VARCHAR(20) PRIMARY KEY, Cname VARCHAR(50) UNIQUE, Unit SMALLINT not null Default 6); 
```

```SQL
CREATE TABLE Enrol (StudentID INT not null CHECK (StudentID>0), CourseNo VARCHAR(20) not null, Semester VARCHAR(50) not null, Status VARCHAR(50), PRIMARY KEY(StudentID, CourseNo, Semester), ...);
```

- If a primary key contains only one attribute, PRIMARY KEY can be defined as an attribute constraint (e.g., in  `{SQL} Course`); otherwise it's defined as a table constraint (e.g., in  `{SQL} Enrol`)
- `{SQL} PRIMARY KEY` specifies a key while `{SQL} UNIQUE`specifies additional keys.
#### Foreign Key Constraints
```SQL
CREATE TABLE Student ( StudentID INT PRIMARY KEY, Name VARCHAR(50), DoB Date, Email VARCHAR(100));
```

```SQL
CREATE TABLE Course ( No VARCHAR(20) PRIMARY KEY, Cname VARCHAR(50), Unit SMALLINT);
```

```SQL
CREATE TABLE Enrol ( StudentID INT, CourseNo VARCHAR(20), Semester VARCHAR(50), Status VARCHAR(50));
```

- Every `StudentID`appearing in `Enrol` must exist in `Student`
- Every `CourseNo` appearing in `Enrol` must exist in `Course`

```SQL
CREATE TABLE Enrol ( StudentID INT, CourseNo VARCHAR(20), Semester VARCHAR(50), Status VARCHAR(50),                               FOREIGN KEY(StudentID) REFERENCES Student(StudentID),          FOREIGN KEY(CourseNo) REFERENCES Course(No));
```

- Can we define`Enrol` before `Student` and `Course`?
- No, `Enrol` has the foreign keys that reference `Student` and `Course`.

#### Attribute Constraints - Index
- Indexes are used for fast retrieval based on columns other than the primary key.
```SQL
CREATE TABLE Customer (CustomerID INT not null, Name VARCHAR(50) not null, DOB DATE not null, Address VARCHAR(80), Phone INT CHECK (Phone>0), PRIMARY KEY(CustomerID)); 
CREATE INDEX index1 ON Customer (Name, DOB); 
CREATE UNIQUE INDEX index2 ON Customer (Phone);
```

#### Data Definition Language
The `{SQL} ALTER TABLE` statement is used to modify an existing relation schema, including:
- Changing the name of a table;
- Adding or dropping an attribute;
- Changing the definition of an attribute;
- Adding or dropping table constraints.
The `{SQL} DROP TABLE` statement is used to remove an existing relation schema from a database schema.

- Add a `NOT NULL` constraint:
```SQL
ALTER TABLE Customer ALTER COLUMN Address SET NOT NULL;
```
- Add a `UNIQUE` constraint:
```SQL
ALTER TABLE Customer ADD UNIQUE(Phone);
```
- Add a `check()` constraint:
```SQL
ALTER TABLE Customer 
ADD CONSTRAINT positive_id CHECK (CustomerID > 0);
```
- Add a `Foreign Key` constraint:
```SQL
ALTER TABLE Enrol 
ADD FOREIGN KEY(StudentID) REFERENCES Student(StudentID);
```
- Add an attribute Email into the table Customer:
 ```SQL
ALTER TABLE Customer 
ADD Email VARCHAR(100);
```
- Drop the attribute Email from the table Customer:
 ```SQL
ALTER TABLE Customer 
DROP COLUMN Email;
```
- Drop the table Enrol:
```SQL
DROP TABLE Enrol;
```
- Drop the table Customer (if it exists):
```SQL
DROP TABLE IF EXISTS Customer;
```
