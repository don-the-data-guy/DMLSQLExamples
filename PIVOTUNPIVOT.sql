-- PIVOT and UNPIVOT:
-- Description: PIVOT transforms rows into columns, while UNPIVOT does the reverse. These operations are handy for:
-- Reshaping data: Converting data from a long format to a wide format, or vice versa.
-- Generating reports: Creating summary tables or pivot charts.
-- Example:
SELECT * FROM (
  SELECT student_id, subject, score
  FROM exam_results
) PIVOT(SUM(score) FOR subject IN ('Math', 'Science', 'English'))
AS p (student_id, math_score, science_score, english_score);
