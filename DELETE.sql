-- Deleting a single row
DELETE FROM employees
WHERE employee_id = 3;

-- Deleting multiple rows
DELETE FROM employees
WHERE hire_date < '2022-01-01';
