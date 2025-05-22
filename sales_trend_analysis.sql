
-- PostgreSQL
SELECT
    DATE_TRUNC('month', order_date) AS year_month,
    SUM(sales) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    online_sales
GROUP BY
    year_month
ORDER BY
    year_month;

-- MySQL
SELECT
    DATE_FORMAT(order_date, '%Y-%m-01') AS year_month,
    SUM(sales) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    online_sales
GROUP BY
    year_month
ORDER BY
    year_month;

-- SQLite
SELECT
    strftime('%Y-%m', order_date) AS year_month,
    SUM(sales) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    online_sales
GROUP BY
    year_month
ORDER BY
    year_month;
