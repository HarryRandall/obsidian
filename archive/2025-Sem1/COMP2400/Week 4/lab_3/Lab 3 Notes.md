#### Section 1

1) Create (or reset) the employee database.
 `{sql} \i employeeCreate.sql`

2. The result of the following query contains duplicate records. Look up the distinct keyword in the PostgreSQL manual (or in the lecture slides), and use it to improve the query.
```sql 
select DISTINCT supervisor.lname, supervisor.ssn from employee, employee as supervisor where employee.superssn = supervisor.ssn; 
```
```  lname   |  ssn
----------+-------
 Keynes   | 21287
 Lovelace | 21286
 Backus   | 20766
 Taylor   | 20915
(4 rows)
```

3. Now look up the order by keyword, and use it to modify the following query to order the result in the ascending order of their last names.
```sql
select lname, ssn from employee order by ssn;
```
```   lname   |  ssn
-----------+-------
 Morishima | 20118
 Dijkstra  | 20765
 Backus    | 20766
 Hopper    | 20864
 Antonio   | 20876
 Taylor    | 20915
 Lovelace  | 21286
 Keynes    | 21287
 Friedman  | 29057
(9 rows)
```

#### Section 2
4. Write a single query which shows the average salary of employees for each department
```sql
SELECT dno, AVG(salary) AS avg_salary
FROM employee
GROUP BY dno;
```
``` dno  |     avg_salary
------+--------------------
 1001 | 63833.500000000000
 1000 | 66586.000000000000
 1007 | 52706.666666666667
(3 rows)
```

5. Show the project numbers and total hours for all projects whose total hours are more than 200 hours.
```sql
select pno, hours from works_on where hours > 200;
```
``` pno  | hours
------+-------
 9001 |   500
 9000 |   250
(2 rows)
```

6. Show the project numbers, names and total hours for the projects if their total hours are larger than 200 hours. Compare your query with the query written in the previous exercise.
```sql
SELECT w.pno, p.pname, w.hours FROM works_on w
JOIN project p ON w.pno = p.pnumber
WHERE w.hours > 200;
``` 
``` pno  |       pname       | hours
------+-------------------+-------
 9001 | Red tape is Fun   |   500
 9000 | Difference Engine |   250
(2 rows)
```

7. Show the department number, department name and average salary of all employees who work in the department if the average salary is greater than $60,000.
```sql
SELECT d.dnumber, d.dname, AVG(e.salary) as avg_salary 
FROM department d JOIN employee e ON d.dnumber = e.dno
GROUP BY d.dnumber, d.dname;
```
``` dnumber |         dname          |     avg_salary
---------+------------------------+--------------------
    1001 | Administration         | 63833.500000000000
    1000 | Information Technology | 66586.000000000000
    1007 | Finance                | 52706.666666666667
(3 rows)
```

#### Section 3
8. List the employees who work on at least one project.
```sql
select DISTINCT e.fname, w.pno 
FROM employee e 
INNER JOIN works_on w 
on e.ssn = w.ssn;
```
```   fname   | pno
-----------+------
 Edsger    | 9000
 Frederick | 9000
 Edsger    | 9001
 Grace     | 9002
(4 rows)
```

9. List the projects which at least one employee works on.
```sql
select p.pname, p.pnumber, w.ssn
FROM project p 
INNER JOIN works_on w 
on p.pnumber = w.pno;
```
```         pname         | pnumber |  ssn
-----------------------+---------+-------
 Red tape is Fun       |    9001 | 20765
 Difference Engine     |    9000 | 20765
 Difference Engine     |    9000 | 20915
 Object Oriented COBOL |    9002 | 20864
(4 rows)
```

10. List all the employees, and the project numbers of the projects they work on if any.
```sql
SELECT e.fname, e.lname, w.pno, p.pname
FROM employee e
LEFT JOIN works_on w ON e.ssn = w.ssn
LEFT JOIN project p ON w.pno = p.pnumber;
```
```
   fname   |   lname   | pno  |         pname
-----------+-----------+------+-----------------------
 Edsger    | Dijkstra  | 9000 | Difference Engine
 Edsger    | Dijkstra  | 9001 | Red tape is Fun
 Grace     | Hopper    | 9002 | Object Oriented COBOL
 Frederick | Taylor    | 9000 | Difference Engine
 Milton    | Friedman  |      |
 John      | Backus    |      |
 Michio    | Morishima |      |
 Gramsci   | Antonio   |      |
 Ada       | Lovelace  |      |
 John      | Keynes    |      |
(10 rows)
```

11. List all the projects, and the SSNs of the employees who work on the projects if any.
```sql
SELECT p.pname, e.ssn
FROM project p
LEFT JOIN works_on w ON p.pnumber = w.pno
LEFT JOIN employee e ON e.ssn = w.ssn;
```
```
         pname         |  ssn
-----------------------+-------
 Difference Engine     | 20765
 Red tape is Fun       | 20765
 Object Oriented COBOL | 20864
 Difference Engine     | 20915
```

12. How many hours have been spent working on the most time-consuming project?
```sql
SELECT MAX(max_hours)
FROM (
    SELECT w.hours AS max_hours
    FROM works_on w
) AS by_dept;
```
```
 max
-----
 500
(1 row)
```

13. Find the highest paid employee of each department, and show their first and last names, department numbers and salaries.
```sql
SELECT DISTINCT ON (d.dnumber) 
    d.dnumber AS d_number, 
    d.dname, 
    e.fname, 
    e.lname, 
    e.salary AS max_salary
FROM employee e
JOIN department d ON d.dnumber = e.dno
ORDER BY d.dnumber, e.salary DESC;
```
```
 d_number |         dname          |  fname  |  lname  | max_salary
----------+------------------------+---------+---------+------------
     1000 | Information Technology | Grace   | Hopper  |   78563.00
     1001 | Administration         | Gramsci | Antonio |   71569.00
     1007 | Finance                | John    | Keynes  |   73567.00
```


15. List the names of all departments that have at least one employee whose salary is less than 50000.
```sql
SELECT e.fname, e.lname, e.salary
FROM employee as e
WHERE EXISTS (
	SELECT * from department d 
	WHERE d.dnumber = e.dno
	AND e.salary < 50000
	);
```
```
 fname  |  lname   |  salary
--------+----------+----------
 Milton | Friedman | 37764.00
 John   | Backus   | 46789.00
(2 rows)
```

16. List the first and last names of employees who work in departments with more than one location.
```sql
SELECT fname, lname
FROM EMPLOYEE e
WHERE (
    SELECT COUNT(*)
    FROM DEPT_LOCATION d
    WHERE d.dnumber = e.dno
) > 1;
```
