SELECT *
FROM reviews
WHERE (stars > 2 AND stars <= 4)
  AND (user_id = 123 OR user_id = 265 OR user_id = 362);
