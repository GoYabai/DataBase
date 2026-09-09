SELECT manufacturer, drug, units_sold
FROM pharmacy_sales
WHERE units_sold BETWEEN 100000 AND 105000
  AND (manufacturer = 'Biogen' OR manufacturer = 'AbbVie' OR manufacturer = 'Eli Lilly');