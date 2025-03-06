#### Simple SQL Queries
- SQL provides the `{SQL} SELECT` statement for retrieving data from a database.
- The `{SQL} SELECT` statement has the following basic form:
```SQL
SELECT attribute_list
     FROM table_list
  [WHERE condition]
[GROUP BY attribute_list [HAVING group_condition]]
[ORDER BY attribute_list];
```
- Only `{SQL} SELECT` and `{SQL} FROM` are mandatory
- The symbol `*` means all the attributes
- Attribute names may be qualified with the table name (required, if attribute names are not unique).
- Attribute and table names can be given an alias.
- `{SQL} DISTINCT` is used for removing duplicate tuples in the query result.

---

| StudentID | CourseNo | Semester | Status | EnrolDate  |
| --------- | -------- | -------- | ------ | ---------- |
| 456       | COMP1130 | 2016 S1  | ACTIVE | 25/02/2016 |
| 458       | COMP1130 | 2016 S1  | ACTIVE | 25/02/2016 |
| 456       | COMP2400 | 2016 S2  | ACTIVE | 09/09/2016 |
```SQL
SELECT * FROM ENROL
```

| StudentID | CourseNo | Semester | Status | EnrolDate  |
| --------- | -------- | -------- | ------ | ---------- |
| 456       | COMP1130 | 2016 S1  | ACTIVE | 25/02/2016 |
| 458       | COMP1130 | 2016 S1  | ACTIVE | 25/02/2016 |
| 456       | COMP2400 | 2016 S2  | ACTIVE | 09/09/2016 |

---

| StudentID | CourseNo | Semester | Status | EnrolDate  |
| --------- | -------- | -------- | ------ | ---------- |
| 456       | COMP1130 | 2016 S1  | ACTIVE | 25/02/2016 |
| 458       | COMP1130 | 2016 S1  | ACTIVE | 25/02/2016 |
| 456       | COMP2400 | 2016 S2  | ACTIVE | 09/09/2016 |
```SQL
SELECT ENROL.StudentID, Semester FROM ENROL;
```

| StudentID | Semester |
| --------- | -------- |
| 456       | 2016 S1  |
| 458       | 2016 S1  |
| 456       | 2016 S2  |

---

| StudentID | CourseNo | Semester | Status | EnrolDate  |
| --------- | -------- | -------- | ------ | ---------- |
| 456       | COMP1130 | 2016 S1  | ACTIVE | 25/02/2016 |
| 458       | COMP1130 | 2016 S1  | ACTIVE | 25/02/2016 |
| 456       | COMP2400 | 2016 S2  | ACTIVE | 09/09/2016 |
```SQL
SELECT e.StudentID as SID, e.Semester FROM ENROL e;
```

| SID | Semester |
| --- | -------- |
| 456 | 2016 S1  |
| 458 | 2016 S1  |
| 456 | 2016 S2  |

---

#### SQL Queries - Where Clause
- Unspecified `{SQL}WHERE` clause means no condition
- All tuples of a relation in the `{sql}FROM` clause are selected.
- If multiple relations are specified in the `{SQL}FROM` clause without join conditions, the Cartesian product of relations is selected.

- The condition in the `{SQL}WHERE` clause can be simple or complicated
```SQL
SELECT * FROM Student;
SELECT * FROM Student, Course;
SELECT * FROM Student WHERE StudentID BETWEEN 100 AND 500;
SELECT * FROM Student WHERE Email is NOT NULL;
SELECT * FROM Student WHERE Email like '%@gmail.com';
```
