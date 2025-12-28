SELECT a.first_name, a.last_name, b.salary FROM employees AS a, salaries AS b WHERE a.emp_no = b.emp_no

-- Alt Version
SELECT a.first_name, a.last_name, b.salary FROM employees AS a INNER JOIN salaries AS b ON b.emp_no = a.emp_no

-- Triple Connection
SELECT
  a.emp_no,
  CONCAT(a.first_name, a.last_name) AS "name",
  b.salary,
  c.title,
  c.from_date AS "promoted on"
FROM employees AS a
INNER JOIN salaries AS b ON a.emp_no = b.emp_no
INNER JOIN titles   AS c ON c.emp_no = a.emp_no
  AND c.from_date = (b.from_date + INTERVAL '2 days')
ORDER BY a.emp_no;

/* Types of Joins:
INNER JOIN - Find Middle parts of 2 or more tables
SELF JOIN - Connect to yourself
LEFT JOIN - Take middle part and everything from left table
RIGHT JOIN - Take middle part and everything from right table
CROSS JOIN - Take everything from connected tables and combine them
FULL JOIN - Take everything from connected tables and if not fitting left them with null
