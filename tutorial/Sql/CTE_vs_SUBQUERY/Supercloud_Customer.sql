SELECT
  customer_id
FROM customer_contracts c
JOIN products p
  USING (product_id)
GROUP BY customer_id
HAVING COUNT(DISTINCT product_category) = (
  SELECT COUNT(DISTINCT product_category) FROM products
)