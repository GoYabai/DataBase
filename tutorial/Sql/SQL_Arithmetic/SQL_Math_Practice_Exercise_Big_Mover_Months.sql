SELECT
  ticker,
  COUNT(*)
FROM stock_prices
WHERE ABS(((close / open) - 1) * 100) > 10
GROUP BY ticker
ORDER BY COUNT(*) DESC;