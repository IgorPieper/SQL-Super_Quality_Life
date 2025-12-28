SELECT
  COUNT(CASE WHEN first_name LIKE 'M%' THEN first_name END) AS "Start with 'M'",
  COUNT(CASE WHEN first_name LIKE '%y' THEN first_name END) AS "End with 'y'",
  COUNT(CASE WHEN first_name LIKE '%a%' THEN first_name END) AS "Have letter 'a' inside",
  COUNT(CASE WHEN first_name LIKE '_a%' THEN first_name END) AS "Second letter is 'a'",
  COUNT(CASE WHEN first_name LIKE '_____' THEN first_name END) AS "Have 5 letters",
  COUNT(CASE WHEN first_name LIKE '___%' THEN first_name END) AS "Is at least 3 letters long"
FROM employees;
