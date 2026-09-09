SELECT
  category,
  COUNT(DISTINCT product)
FROM product_spend
GROUP BY category;