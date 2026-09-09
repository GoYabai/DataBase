SELECT
  ticker,
  MIN(open)
FROM stock_prices
GROUP BY ticker
HAVING MIN(open) > 100;