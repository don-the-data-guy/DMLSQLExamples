-- Updating a single row
UPDATE employees
SET salary = 70000
WHERE employee_id = 1;

-- Updating multiple rows
UPDATE employees
SET salary = salary * 1.10
WHERE hire_date < '2023-01-01';
