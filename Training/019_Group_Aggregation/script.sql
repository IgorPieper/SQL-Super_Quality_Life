SELECT *, d.dept_name, AVG(salary) OVER (
    PARTITION BY d.dept_name
  )
FROM salaries
JOIN dept_emp AS de USING (emp_no)
JOIN departments AS d USING (dept_no);
