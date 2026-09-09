SELECT *
FROM reviews
WHERE stars >= 4
  AND review_id < 6000
  AND review_id > 2000
  AND user_id != 142;