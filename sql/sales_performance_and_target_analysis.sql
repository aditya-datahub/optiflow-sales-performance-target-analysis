CREATE DATABASE sales_performance_db;
USE sales_performance_db;

select * from orders_full;

select * from sales_vs_target;

-- 1. Overall Business Performance
SELECT
    COUNT(order_id) AS total_orders,
    SUM(order_value) AS total_sales,
    SUM(order_profit) AS total_profit
FROM orders_full;

-- 2. Monthly Sales & Profit Trend
 SELECT
    order_month,
    SUM(order_value) AS monthly_sales,
    SUM(order_profit) AS monthly_profit
FROM orders_full
GROUP BY order_month
ORDER BY order_month;

-- 3. State-wise Sales Performance
SELECT
    state,
    SUM(order_value) AS total_sales,
    SUM(order_profit) AS total_profit
FROM orders_full
GROUP BY state
ORDER BY total_sales DESC;

-- 4. High-Value but Loss-Making Orders
SELECT
    order_id,
    order_value,
    order_profit
FROM orders_full
WHERE order_value > (
    SELECT AVG(order_value) FROM orders_full
)
AND order_profit < 0
ORDER BY order_value DESC;

-- 5. Target vs Actual Sales
SELECT
    category,
    year,
    month,
    actual_sales,
    target,
    achievement_pct
FROM sales_vs_target
ORDER BY achievement_pct DESC;

-- 6. Performance status of all categories according to year, month
SELECT
    category,
    year,
    month,
    actual_sales,
    target,
    achievement_pct,
    CASE
        WHEN achievement_pct >= 100 THEN 'Overachieved'
        WHEN achievement_pct >= 80 THEN 'Near Target'
        WHEN achievement_pct >= 50 THEN 'Underperforming'
        ELSE 'Critical Underperformance'
    END AS performance_status
FROM sales_vs_target
ORDER BY year, month, category;

-- 7. Identify critically underperforming categories
SELECT
    category,
    year,
    month,
    actual_sales,
    target,
    achievement_pct
FROM sales_vs_target
WHERE achievement_pct < 50
ORDER BY achievement_pct;

-- 8. Categories That Exceeded Targets
SELECT
    category,
    year,
    month,
    actual_sales,
    target,
    achievement_pct
FROM sales_vs_target
WHERE achievement_pct >= 100
ORDER BY achievement_pct DESC;

