SELECT
  COUNT(*) AS duplicate_companies
FROM (
  SELECT
    COUNT(*)
  FROM job_listings
  GROUP BY company_id, title, description
  HAVING COUNT(*) > 1
) a
