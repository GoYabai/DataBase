WITH clean AS (
  SELECT
    measurement_time,
    measurement_value,
    ROW_NUMBER() OVER (
    PARTITION BY EXTRACT(DAY FROM measurement_time)
    ORDER BY measurement_time) AS measurement_num
  FROM measurements
  GROUP BY measurement_time, measurement_value
)
SELECT
  DATE_TRUNC('day', measurement_time) AS measurement_day,
  SUM(CASE WHEN measurement_num % 2 != 0 THEN measurement_value ELSE 0 END) AS odd_sum,
  SUM(CASE WHEN measurement_num % 2 = 0 THEN measurement_value ELSE 0 END) AS even_sum
FROM clean
GROUP BY DATE_TRUNC('day', measurement_time)
ORDER BY measurement_day
