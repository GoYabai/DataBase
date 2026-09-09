SELECT *
FROM customers
WHERE age BETWEEN 18 AND 22
  AND state IN ('Victoria', 'Tasmania', 'Queensland')
  AND NOT gender = 'n/a'
  AND (customer_name LIKE 'A%' OR customer_name LIKE 'B%');