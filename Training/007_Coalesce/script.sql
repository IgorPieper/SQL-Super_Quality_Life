-- If name is empty say "There is no name"
SELECT COALESCE(firstname, 'There is no name') FROM customers;
