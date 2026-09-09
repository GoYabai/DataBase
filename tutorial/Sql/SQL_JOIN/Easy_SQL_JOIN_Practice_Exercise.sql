SELECT *
FROM trades AS t
JOIN users AS u
  ON t.user_id = u.user_id;