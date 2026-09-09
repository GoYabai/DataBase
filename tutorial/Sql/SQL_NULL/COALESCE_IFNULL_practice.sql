DROP TABLE IF EXISTS Products;

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    regular_price DECIMAL(10,2),
    promo_price DECIMAL(10,2),
    clearance_price DECIMAL(10,2)
);

INSERT INTO Products (product_id, product_name, regular_price, promo_price, clearance_price) VALUES
(1, 'Áo thun', 250000, 200000, NULL),
(2, 'Quần Jeans', 500000, NULL, NULL),
(3, 'Giày Sneaker', 1200000, 1000000, 800000),
(4, 'Balo', 400000, NULL, 300000),
(5, 'Mũ lưỡi trai', 150000, NULL, NULL);

--query
SELECT
    product_name,
    COALESCE(clearance_price, promo_price, regular_price) AS final_price
FROM Products;

SELECT
    product_name,
    COALESCE(regular_price - promo_price, 0) AS saved_amount
FROM Products