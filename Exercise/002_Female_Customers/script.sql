-- We are seeking female customers from every states excluded 'NY'
SELECT CONCAT(firstname, ' ', lastname) AS "Name", gender, state  FROM customers 
WHERE NOT state='NY' AND gender='F';
