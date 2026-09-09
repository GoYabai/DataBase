SELECT
  u.city,
  COUNT(*) AS total_orders
FROM trades AS t
JOIN users AS u
  USING (user_id)
WHERE t.status = 'Completed'
GROUP BY city
ORDER BY total_orders DESC
LIMIT 3;
