SELECT
  prod_id,
  price,
  category,
  LAST_VALUE(price) OVER (
    PARTITION BY category
    ORDER BY price
    RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
  ) AS "most expensive in category"
FROM products;
