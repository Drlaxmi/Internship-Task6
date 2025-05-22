
-- PostgreSQL (Filtered for 2016)
SELECT
    DATE_TRUNC('month', order_date) AS year_month,
    SUM(sales) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    online_sales
WHERE
    order_date BETWEEN '2016-01-01' AND '2016-12-31'
GROUP BY
    year_month
ORDER BY
    year_month;

-- MySQL (Filtered for 2016)
SELECT
    DATE_FORMAT(order_date, '%Y-%m-01') AS year_month,
    SUM(sales) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    online_sales
WHERE
    order_date BETWEEN '2016-01-01' AND '2016-12-31'
GROUP BY
    year_month
ORDER BY
    year_month;

-- SQLite (Filtered for 2016)
SELECT
    strftime('%Y-%m', order_date) AS year_month,
    SUM(sales) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    online_sales
WHERE
    date(order_date) BETWEEN '2016-01-01' AND '2016-12-31'
GROUP BY
    year_month
ORDER BY
    year_month;
