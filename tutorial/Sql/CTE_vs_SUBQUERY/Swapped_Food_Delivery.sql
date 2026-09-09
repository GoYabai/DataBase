DROP TABLE IF EXISTS concerts;
CREATE TABLE zomato_orders (
    order_id INTEGER,
    item VARCHAR(255)
);

INSERT INTO zomato_orders (order_id, item) VALUES
    (1, 'Chow Mein'),
    (2, 'Pizza'),
    (3, 'Pad Thai'),
    (4, 'Butter Chicken'),
    (5, 'Eggrolls'),
    (6, 'Burger'),
    (7, 'Tandoori Chicken'),
    (8, 'Sushi'),
    (9, 'Tacos'),
    (10, 'Ramen'),
    (11, 'Burrito'),
    (12, 'Lasagna'),
    (13, 'Salad'),
    (14, 'Steak'),
    (15, 'Spaghetti');


WITH item_count AS (
  SELECT
    COUNT(order_id) AS total_orders
  FROM orders
)


SELECT
  CASE
    WHEN order_id % 2 != 0 AND order_id != total_orders THEN order_id + 1
    WHEN order_id % 2 != 0 AND order_id = total_orders THEN order_id
    ELSE order_id - 1
  END AS corrected_order_id,
  item
FROM orders
CROSS JOIN item_count
ORDER BY corrected_order_id