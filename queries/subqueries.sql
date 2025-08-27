-- Customers spent above avg
SELECT c.customer_name, SUM(s.total_amount) AS total_spent
FROM sales s
JOIN customers c ON s.customer_id=c.customer_id
GROUP BY c.customer_name
HAVING SUM(s.total_amount) > (SELECT AVG(total_amount) FROM sales);
