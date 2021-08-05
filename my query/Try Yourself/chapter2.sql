--Try it yourself

SELECT last_name, school
FROM teachers
ORDER BY last_name;


SELECT first_name, last_name
FROM teachers
WHERE first_name LIKE 's%' AND salary>40000;
 
SELECT first_name, last_name
FROM teachers
WHERE hire_date>'2010-01-01'
ORDER BY salary DESC;