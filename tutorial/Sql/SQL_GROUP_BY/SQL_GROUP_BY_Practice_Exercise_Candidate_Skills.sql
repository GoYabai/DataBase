SELECT
  skill,
  COUNT(candidate_id)
FROM candidates
GROUP BY skill
ORDER BY 2 DESC;