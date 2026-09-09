SELECT COUNT(manufacturer), SUM(total_sales)
FROM pharmacy_sales
WHERE manufacturer = 'Pfizer';