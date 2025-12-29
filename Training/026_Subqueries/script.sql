SELECT title, price, (SELECT AVG(price) FROM products) AS "global average price"
FROM (
  SELECT * FROM products WHERE price < 10
) AS "products_sub";
