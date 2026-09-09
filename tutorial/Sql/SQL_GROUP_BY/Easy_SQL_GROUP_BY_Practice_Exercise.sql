SELECT
  ticker,
  MIN(open) AS min
FROM stock_prices
GROUP BY ticker
ORDER BY min DESC;