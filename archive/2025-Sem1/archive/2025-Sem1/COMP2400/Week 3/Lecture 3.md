![[W3 Lecture Slides.pdf]]

---
- The `{sql} INSERT` statement is used to add tuples in a relation.
```SQL
INSERT INTO table_name [(attribute_name,...,attribute_name)] VALUES (value,...,value),...,(value,...,value);
```

- The `{sql} UPDATE` statement is used to modify attribute values of one or more selected tuples.
```SQL
UPDATE table_name SET attribute_name = value,...,attribute_name = value [WHERE selection_condition];
```

- The `{sql} DELETE` statement is used to remove tuples from a relation
```SQL
DELETE FROM table_name [WHERE selection_condition];
```

#### Join Operations
- When we want to retreive data from more than one relation, we often need to use join operations.
- **INNER JOIN**: tuples are included in the result only if there is at least one matching in both relations
- **LEFT/RIGHT JOIN**: All tuples of the left/right table are included in the result, even if there are no matches in the relations.
- **NATURAL JOIN**: is considered as one kind of inner join.
	- In a natural join, two relations are joined implicitly be comparing all attributes of the same names in both relations.
	- A natural join retains all data of the two tables for only the matched rows, without duplication.