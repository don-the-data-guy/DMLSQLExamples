-- Selecting all columns from a table
SELECT * FROM employees;

-- Selecting specific columns from a table
SELECT first_name, last_name, salary FROM employees;

-- Selecting with a WHERE clause
SELECT * FROM employees WHERE salary > 60000;

-- Selecting with an ORDER BY clause
SELECT * FROM employees ORDER BY hire_date DESC;

-- Using JOIN to combine rows from two or more tables
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

-- Using aggregate functions
SELECT department_id, COUNT(*) AS num_employees, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id;
