SELECT
  candidate_id
FROM candidates
GROUP BY candidate_id
HAVING COUNT(skill) > 2;