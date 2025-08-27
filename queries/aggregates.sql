-- Total revenue
SELECT SUM(total_amount) AS total_revenue FROM sales;

-- Monthly revenue trend
SELECT DATE_FORMAT(sale_date,'%Y-%m') AS month, SUM(total_amount) AS revenue
FROM sales
GROUP BY month
ORDER BY month;

-- Average order value
SELECT ROUND(AVG(total_amount),2) AS avg_order_value FROM sales;

-- Units sold by category
SELECT p.category, SUM(s.quantity) AS units_sold
FROM sales s
JOIN products p ON s.product_id=p.product_id
GROUP BY p.category
ORDER BY units_sold DESC;
