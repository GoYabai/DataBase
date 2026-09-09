SELECT
  page_id
FROM pages p
LEFT JOIN page_likes l
  USING (page_id)
WHERE user_id IS NULL
ORDER BY page_id