CREATE TABLE departments (
    dept_id bigserial,
    dept varchar(100),
    city varchar(100),
    CONSTRAINT dept_key PRIMARY KEY (dept_id),
    CONSTRAINT dept_city_unique UNIQUE (dept, city)
);

CREATE TABLE employees (
    emp_id bigserial,
    first_name varchar(100),
    last_name varchar(100),
    salary integer,
    dept_id integer REFERENCES departments (dept_id),
    CONSTRAINT emp_key PRIMARY KEY (emp_id),
    CONSTRAINT emp_dept_unique UNIQUE (emp_id, dept_id)
);

INSERT INTO departments (dept, city)
VALUES
    ('Marketing', 'Atlanta'),
    ('IT', 'cape');
	
INSERT INTO employees (first_name, last_name, salary, dept_id)
VALUES
    ('kennie', 'alfred', 62500, 1),
    ('bossy', 'teilar', 59300, 1),
    ('taa', 'tee', 83000, 2),
    ('benrat', 'joe', 95000, 2);
	
SELECT *
FROM employees JOIN departments
ON employees.dept_id = departments.dept_id;