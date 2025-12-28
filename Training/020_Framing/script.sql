SELECT
  emp_no,
  salary,
  COUNT(salary) OVER (
    ORDER BY emp_no
  )
FROM salaries;
