SELECT DISTINCT last_name FROM employees ORDER BY last_name ASC; -- A->Z
SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC; -- Z->A

SELECT last_name FROM employees GROUP BY last_name ORDER BY LENGTH(last_name) ASC; -- From shortest to longest
SELECT last_name FROM employees GROUP BY last_name ORDER BY LENGTH(last_name) DESC; -- From longest to shortest
