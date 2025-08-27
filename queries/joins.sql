-- Revenue by product
SELECT p.product_name, SUM(s.total_amount) AS revenue
FROM sales s
JOIN products p ON s.product_id=p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;

-- Revenue by region
SELECT r.region_name, SUM(s.total_amount) AS revenue
FROM sales s
JOIN regions r ON s.region_id=r.region_id
GROUP BY r.region_name
ORDER BY revenue DESC;

-- Revenue by customer
SELECT c.customer_name, SUM(s.total_amount) AS total_spent
FROM sales s
JOIN customers c ON s.customer_id=c.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;
