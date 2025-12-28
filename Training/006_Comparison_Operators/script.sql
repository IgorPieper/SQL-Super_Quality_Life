SELECT
  COUNT(CASE WHEN age > 40  THEN income END) AS "Before 40",
  COUNT(CASE WHEN age = 40  THEN income END) AS "In 40",
  COUNT(CASE WHEN age < 40 THEN income END) AS "After 40",
  COUNT(CASE WHEN age != 40  THEN income END) AS "Not in 40",
  COUNT(CASE WHEN age BETWEEN 20 AND 40  THEN income END) AS "Between 20 and 40"
FROM customers;
