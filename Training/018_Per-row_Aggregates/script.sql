SELECT *, MAX(salary) OVER() FROM salaries WHERE salary < 70000
