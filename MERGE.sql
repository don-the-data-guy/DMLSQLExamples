-- Using MERGE to update, insert, or delete rows in a target table based on a source table
MERGE INTO employees AS target
USING new_employees AS source
ON target.employee_id = source.employee_id
WHEN MATCHED THEN
    UPDATE SET target.salary = source.salary
WHEN NOT MATCHED THEN
    INSERT (employee_id, first_name, last_name, hire_date, salary)
    VALUES (source.employee_id, source.first_name, source.last_name, source.hire_date, source.salary)
WHEN NOT MATCHED BY SOURCE THEN
    DELETE;
