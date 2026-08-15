
WITH cnt AS (
  SELECT
    *,
    ROW_NUMBER() OVER (PARTITION BY card_name
      ORDER BY issue_year	, issue_month) AS cnt
  FROM monthly_cards_issued
)

SELECT
  card_name,
  issued_amount
FROM cnt
WHERE cnt = 1
ORDER BY issued_amount DESC
