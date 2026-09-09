WITH rank AS (
  SELECT
    transaction_date,
    user_id,
    COUNT(*) AS purchase_count,
    ROW_NUMBER() OVER(
    PARTITION BY user_id
    ORDER BY transaction_date DESC) AS late
  FROM user_transactions
  GROUP BY transaction_date, user_id
  ORDER BY transaction_date DESC
)

SELECT
  transaction_date,
  user_id,
  purchase_count
FROM rank
WHERE late = 1
ORDER BY transaction_date ASC, user_id ASC;
