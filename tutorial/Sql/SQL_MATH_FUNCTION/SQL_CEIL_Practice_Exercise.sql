SELECT
  drug,
  CEIL(total_sales / units_sold) as unit_cost
FROM pharmacy_sales
WHERE manufacturer = 'Merck'
ORDER BY unit_cost;