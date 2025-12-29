
-- EXISTS - If Exists
SELECT firstname, lastname, income
FROM customers AS c
WHERE EXISTS (
    SELECT * FROM orders AS o
    WHERE c.customerid = o.customerid AND totalamount > 400
) AND income > 90000;


-- IN - If value is in results
-- NOT IN - If value is not in results
SELECT prod_id
FROM products
WHERE category IN (
  SELECT category
  FROM categories
  WHERE categoryname IN ('Comedy', 'Family', 'Classics')
  );
  
  
-- ANY/SOME - At least one value is in results
SELECT prod_id
FROM products
WHERE category = ANY (
  SELECT category FROM categories
  WHERE categoryname IN ('Comedy', 'Family', 'Classics')
));


-- ALL - Bigger than...
SELECT prod_id, title, sales
FROM products
JOIN inventory AS i USING (prod_id)
WHERE i.sales > ALL (
    SELECT AVG(sales) FROM inventory
    JOIN products AS p1 USING (prod_id)
    GROUP BY p1.category
);
