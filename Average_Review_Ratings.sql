SELECT
  EXTRACT(MONTH FROM submit_date)::NUMERIC AS mth,
  product_id AS product,
  ROUND(AVG(stars), 2) AS avg_stars
FROM reviews
GROUP BY EXTRACT(MONTH FROM submit_date),
  product
ORDER BY mth, product