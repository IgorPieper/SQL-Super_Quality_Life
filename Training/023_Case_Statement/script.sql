SELECT o.orderid, o.customerid,
  CASE
    WHEN o.customerid = 1
      THEN 'my first customer'
    ELSE 'not my first customer'
  END,
  o.netamount
FROM orders AS o
ORDER BY o.customerid;
