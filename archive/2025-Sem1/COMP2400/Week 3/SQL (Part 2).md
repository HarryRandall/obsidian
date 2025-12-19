![[Week 3 SQL.pdf]]

#### Data Manipulation Language
- INSERT - the statement is used to add tuples into a relation
```SQL
INSERT INTO table_name[(attribute_name,...,attribute_name)]
VALUES (value,...,value),...,(value,...,value);
```
- UPDATE - this statement is used to modify attribute values of one or more selected tuples.
```SQL
UPDATE table_name
SET attribute_name = value,...,attribute_name = value
[WHERE selection_condition];
```
- DELETE - This statement is used to remove tuples from a relation
```SQL
DELETE FROM table_name [WHERE selection_condition];
```
- SELECT

#### Insert Examples
- The following three ways of inserting tuples into the relation `Student` are equivalent
```SQL
INSERT INTO Student
VALUES (456, 'Tom', '25/01/1988', 'tom@gmail.com'),
(458, 'Peter', '20/02/1991', 'peter@hotmail.com');
```

```SQL
INSERT INTO Student(Name, StudentID, DoB, Email)
VALUES ('Tom', 456, '25/01/1988', 'tom@gmail.com'),
('Peter', 458, '20/02/1991', 'peter@hotmail.com');
```

```SQL
INSERT INTO Student
VALUES (456, 'Tom', '25/01/1988', 'tom@gmail.com');
INSERT INTO Student
VALUES (458, 'Peter', '20/02/1991', 'peter@hotmail.com');
```

#### Insert - Primary Key Violation
- Suppose that we have the relation `Student` with the primary key on `StudentID`:

| Student_ID | Name  | DoB        | Email             |
| ---------- | ----- | ---------- | ----------------- |
| 456        | Tom   | 25/01/1988 | tom@email.com     |
| 458        | Peter | 20/02/1991 | peter@hotmail.com |
- What should happen if we try to recycle Tom's `StudentID`?
```SQL
INSERT INTO Student(StudentID, Name, DoB, Email)
VALUES (456, 'Smith', '27/08/1989', 'smith@gmail.com')
```

- DBMSs will not allow two tuples with the same primary key value in `Student` and thus will through a primary key violation.
#### Insert - Foreign Key Violation
- Consider the relations `Student`, and `Enrol` with the foreign key `StudentID` $\subseteq$ `Student[StudentID]`.

| Student_ID | Name  | DoB        | Email             |
| ---------- | ----- | ---------- | ----------------- |
| 456        | Tom   | 25/01/1988 | tom@email.com     |
| 458        | Peter | 20/02/1991 | peter@hotmail.com |
| 459        | Fran  | 11/09/1987 | frankk@gmail.com  |
- If we only have the above three tuples in `Student`, can we add the following tuple into `Enrol`
```SQL
INSERT INTO Enrol(StudentID, CourseNo, Semester, Status)
VALUES (460, 'COMP2400', '2016 S2', 'active');
```
- DMBSs will not allow a tuple in `Enrol` which has a `studentID` not appearing in any tuples of `Student` due to the foreign key `StudentID` $\subseteq$ `Student[StudentID]` on `Enrol`.

#### Update and Delete - Examples
- If we want to change Tom's email and name stored in the relation `Student`, then we use
```SQL
UPDATE Student
SET Name='Tom Lee', Email='tom.lee@yahoo.com'
WHERE StudentID=456;
```
- If we want to delete Tom's information from the relation `Student`,  we use 
```SQL
DELETE FROM Student WHERE StudentID=456;
```
- We can delete all the tuples in the relation `Student` by using
```SQL
DELETE FROM Student;
```

Question time:
- What is the difference between the following statements:
```SQL
DELETE FROM Student;
```
```SQL
DROP TABLE Student;
```

Answer: The first table deletes all data inside of the table Student, but it maintains all of the columns/attributes. The second command will delete the whole table leaving nothing behind.

#### Update and Delete - Referential Actions
- Referential actions specify what happens in case of deleting or updating referenced tuples (via foreign key constraints).
- SQL offers the following possibilities:
	1. `{SQL} NO ACTION` (default) will throw an error if one tries to delete a row (or update the primary key value) referenced.
	2. `{SQL} CASCADE` will force the referencing tuples to be deleted (or updated with new primary key value).
	3. `{SQL} SET NULL` will force the corresponding values in the referencing tuples to be set to a null value (i.e., unknown).
	4. `{SQL} SET DEFAULT` will force corresponding values in the referencing tuples to be set to a specified default value.

#### Referential Actions - Foreign Key
```SQL
CREATE TABLE Student( StudentID INT PRIMARY KEY, Name VARCHAR(50), DoB Date, Email VARCHAR(100));
```

```SQL
CREATE TABLE Course (No VARCHAR(20) PRIMARY KEY, Cname VARCHAR(50), Unit SMALLINT);
```

```SQL
CREATE TABLE Enrol( StudentID INT, CourseNo VARCHAR(20), Semester VARCHAR(50), Status VARCHAR(50),                                       FOREIGN KEY(StudentID) REFERENCES Student(StudentID)                          ON DELETE NO ACTION,                                                         FOREIGN KEY(CourseNo) REFERENCES Course(No));
```
#### Referential Actions - Example
- Consider the following foreign key defined on `Enrol`:
```SQL
FOREIGN KEY(StudentID) REFERENCES STUDENT(StudentID)
ON DELETE NO ACTION
```

| StudentID | CourseNo | Semester | Status | EnrolDate  |
| --------- | -------- | -------- | ------ | ---------- |
| 456       | COMP1130 | 2016 S1  | ACTIVE | 25/02/2016 |
| 458       | COMP1130 | 2016 S1  | ACTIVE | 25/02/2016 |
| 456       | COMP2400 | 2016 S2  | ACTIVE | 09/09/2016 |

| Student_ID | Name  | DoB        | Email             |
| ---------- | ----- | ---------- | ----------------- |
| 456        | Tom   | 25/01/1988 | tom@email.com     |
| 458        | Peter | 20/02/1991 | peter@hotmail.com |
- The deletion of a student who has enrolled at least one course will throw out an error concerning the foreign key.

- Consider the following foreign key defined on `Enrol`:
```SQL
FOREIGN KEY(StudentID) REFERENCES STUDENT(StudentID)
ON DELETE CASCADE
```
- Deleting a student in `Student` will also delete all of his enrolled courses in `Enrol`. We would have `Enrol` below after deleting the student 456:

| StudentID | CourseNo | Semester | Status | EnrolDate  |
| --------- | -------- | -------- | ------ | ---------- |
| 458       | COMP1130 | 2016 S1  | ACTIVE | 25/02/2016 |