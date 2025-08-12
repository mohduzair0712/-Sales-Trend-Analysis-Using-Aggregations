CREATE DATABASE sales_db;
USE sales_db;

CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id VARCHAR(10)
);

INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1,  '2025-01-05', 500.00, 'P101'),
(2,  '2025-01-15', 800.00, 'P102'),
(3,  '2025-02-03', 1200.00, 'P103'),
(4,  '2025-02-12', 400.00, 'P101'),
(5,  '2025-03-07', 1500.00, 'P104'),
(6,  '2025-03-20', 700.00, 'P102'),
(7,  '2025-04-11', 950.00, 'P105'),
(8,  '2025-04-25', 1100.00, 'P101'),
(9,  '2025-05-02', 600.00, 'P103'),
(10, '2025-05-14', 1300.00, 'P104'),
(11, '2025-06-09', 800.00, 'P105'),
(12, '2025-06-22', 1500.00, 'P101'),
(13, '2025-07-04', 2000.00, 'P102'),
(14, '2025-07-18', 900.00, 'P103'),
(15, '2025-08-10', 1600.00, 'P104'),
(16, '2025-08-28', 750.00, 'P105'),
(17, '2025-09-05', 1000.00, 'P101'),
(18, '2025-09-25', 1300.00, 'P102'),
(19, '2025-10-14', 1750.00, 'P103'),
(20, '2025-10-30', 900.00, 'P104'),
(21, '2025-11-06', 1200.00, 'P105'),
(22, '2025-11-22', 1500.00, 'P101'),
(23, '2025-12-08', 2100.00, 'P102'),
(24, '2025-12-20', 950.00, 'P103');


SELECT 
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
WHERE EXTRACT(YEAR FROM order_date) = 2025
GROUP BY month
ORDER BY month;