SELECT NULL AS "prod_id", SUM(ol.quantity)
FROM orderlines AS ol

UNION ALL

SELECT prod_id AS "prod_id", SUM(ol.quantity)
FROM orderlines AS ol
GROUP BY prod_id
ORDER BY prod_id DESC;


-- Alt Version
SELECT prod_id AS "prod_id", SUM(ol.quantity)
FROM orderlines AS ol
GROUP BY 
GROUPING SETS ( (),(prod_id) );
