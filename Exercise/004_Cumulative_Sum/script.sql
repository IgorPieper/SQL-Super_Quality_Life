SELECT o.orderid, o.customerid, o.netamount,
  SUM(o.netamount) OVER (
    PARTITION BY o.customerid
    ORDER BY o.orderid
  ) AS "cum sum"
FROM orders AS o
ORDER BY o.customerid;
