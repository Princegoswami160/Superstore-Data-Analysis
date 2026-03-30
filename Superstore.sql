-- Superstore Dataset Analysissuperstore
-- Calculating Total Sales & Profit
SELECT SUM(sales), SUM(profit) FROM superstore;

-- Comparing Region-Wise Profit
SELECT region, SUM(profit)
FROM superstore
GROUP BY region;

-- Top 5 Products
SELECT product_name, SUM(sales) AS total_sales
FROM superstore
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;

-- Products Making Loss
SELECT product_name, SUM(profit)
FROM superstore
GROUP BY product_name
HAVING SUM(profit) < 0;

-- Analysing Monthly Sales Trends
SELECT YEAR(order_date), MONTH(order_date), SUM(sales)
FROM superstore
GROUP BY YEAR(order_date), MONTH(order_date);