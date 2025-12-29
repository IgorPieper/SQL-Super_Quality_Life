SELECT emp_no, salary, dea.avg AS "Department average salary"
FROM salaries AS s
JOIN dept_emp AS de USING(emp_no)
JOIN (
        SELECT dept_no, AVG(salary) 
        FROM salaries AS s2
        JOIN dept_emp AS e USING(emp_no)
        GROUP BY dept_no
     ) AS dea USING(dept_no)
WHERE salary > dea.avg
