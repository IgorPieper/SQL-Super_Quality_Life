-- We are seeking female customers from 'OR' and 'NY'
SELECT CONCAT(firstname, ' ', lastname) AS "Name", gender, state  FROM customers 
WHERE (state='OR' OR state='NY') AND gender='F';
