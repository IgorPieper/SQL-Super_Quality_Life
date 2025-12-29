-- Creating View
CREATE OR REPLACE VIEW last_salary_change AS
SELECT e.emp_no, MAX(s.from_date)
FROM salaries AS s

JOIN employees   AS e  USING (emp_no)
JOIN dept_emp    AS de USING (emp_no)
JOIN departments AS d  USING (dept_no)

GROUP BY e.emp_no;


-- Using View
SELECT *
FROM salaries
JOIN last_salary_change AS l USING (emp_no)
WHERE from_date = l.max
ORDER BY emp_no;

-- Changing name of a View
ALTER VIEW last_salary_change RENAME TO "last_salary";

-- Deleting a View
DROP VIEW last_salary;
