DROP TABLE IF EXISTS raw_orders

CREATE TABLE raw_orders (
    order_id VARCHAR(10),
    customer_name_raw VARCHAR(50),
    city_raw VARCHAR(50),
    unit_price_raw VARCHAR(50),
    order_date_raw VARCHAR(50),
    updated_at TIMESTAMP
);


INSERT INTO raw_orders (
    order_id, 
    customer_name_raw, 
    city_raw, 
    unit_price_raw, 
    order_date_raw, 
    updated_at
)
VALUES
    ('O001', 'Lan',   'HCM',     '120000', '05/01/2024',   '2024-01-05 09:00:00'),
    ('O001', 'Lan',   'HCM',     '120000', '05/01/2024',   '2024-01-05 10:00:00'),
    ('O002', 'N/A',   'tp.hcm',  '85,000', '12/01/2024',   '2024-01-12 11:10:00'),
    ('O003', 'empty', 'Sai Gon', '1,200',  '31/01/2024',   '2024-01-31 13:40:00'),
    ('O004', 'Minh',  'unknown', '300000', 'empty',        '2024-02-02 15:00:00'),
    ('O005', 'An',    'HN',      'free',   '07/02/2024',   '2024-02-07 08:30:00'),
    ('O006', 'Thu',   'ha noi',  '45,500', '20/02/2024 .', '2024-02-20 16:15:00');

-- cleaning process:
-- Bước 1: chuẩn hóa mít sinh đa ta
CREATE TEMP VIEW step_1_missing AS
SELECT
    order_id,

    CASE
        WHEN LOWER(TRIM(customer_name_raw)) in ('n/a', 'empty', 'unknown', '') THEN NULL
        ELSE TRIM(customer_name_raw)
    END AS customer_name_clean,

    CASE
        WHEN LOWER(TRIM(city_raw)) in ('n/a', 'empty', 'unknown', '') THEN NULL
        ELSE TRIM(city_raw)
    END AS city_clean,

    unit_price_raw, 
    order_date_raw, 
    updated_at
FROM raw_orders;

-- Bước 2: Chuẩn hóa giá trị
CREATE TEMP VIEW step_2_text AS
SELECT
    order_id,
    customer_name_clean,

    CASE
        WHEN LOWER(TRIM(city_clean)) IN ('hcm', 'tp.hcm', 'sai gon')
            THEN 'TP.HCM'
        WHEN LOWER(TRIM(city_clean)) IN ('ha noi', 'hn')
            THEN 'Ha Noi'
        ELSE city_clean
    END AS city_standardized,

    unit_price_raw, 
    order_date_raw, 
    updated_at
FROM step_1_missing;

-- Bước 3: chuyển đổi kiểu dữ liệu
CREATE TEMP VIEW step_3_types AS
SELECT
    order_id,
    customer_name_clean,
    city_standardized,

    CASE
        WHEN LOWER(TRIM(unit_price_raw)) IN ('', 'empty', 'n/a', 'unknown', 'free')
        THEN NULL
        ELSE REPLACE(TRIM(unit_price_raw), ',', '')::NUMERIC
    END AS unit_price,

    CASE
        WHEN LOWER(TRIM(order_date_raw)) IN ('', 'empty', 'n/a', 'unknown')
        THEN NULL
        ELSE TO_DATE(TRIM(order_date_raw), 'DD/MM/YYYY')
    END AS order_date,

    updated_at
FROM step_2_text;

-- Bước 4: xử lý duplicate
CREATE TEMP VIEW clean_orders AS
WITH ranked AS (
    SELECT
        *,
        ROW_NUMBER() OVER (
            PARTITION BY order_id
            ORDER BY updated_at DESC
        ) AS rn
    FROM step_3_types
)
SELECT
    order_id,
    customer_name_clean,
    city_standardized,
    unit_price,
    order_date,
    updated_at
FROM ranked
WHERE rn = 1;


-- data after cleaning
SELECT
    *
FROM clean_orders

-- Ngoài ra từ updated_at có thể suy ra order_date ( hìn như thế :( )
-- để chạy hết trong cùng 1 lượt thì dùng cte
