-- Lateral Joins (aka CROSS APPLY in SQL Server):
-- Description: Lateral joins allow you to join a table with the result of a function or subquery applied to each row of the table. This is excellent for:
-- Unnesting arrays: Extracting elements from arrays in a normalized way.
-- Dynamic filtering: Applying filters based on values in each row.
-- Example:
SELECT s.student_id, c.course_name
FROM students s
CROSS APPLY (
  SELECT value AS course_name
  FROM TABLE(FLATTEN(s.enrolled_courses))
) c;

