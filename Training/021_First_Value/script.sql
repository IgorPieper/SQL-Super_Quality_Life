SELECT prod_id, price, category,
  FIRST_VALUE(price) OVER (
    PARTITION BY category
    ORDER BY price
    RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
  )
FROM products;
