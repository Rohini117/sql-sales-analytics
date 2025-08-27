
---

### **2️⃣ insights/customer_behavior.md**

# Customer Behavior Analysis

This analysis highlights top customers, average order values, and spending trends.

## Top Customers by Spending
- **Query Used:**
`
SELECT c.customer_name, SUM(s.total_amount) AS total_spent
FROM sales s
JOIN customers c ON s.customer_id=c.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;`
- **Insight:** Customers like Ravi Kumar and Ananya Sharma show the highest spending.

## Average Order Value
- **Query Used:**
`
SELECT ROUND(AVG(total_amount),2) AS avg_order_value FROM sales;
`
- **Insight:** The average order value is approximately ₹[28037.5].

## Customers Above Average Spending
- **Query Used:**
`
SELECT c.customer_name, SUM(s.total_amount) AS total_spent
FROM sales s
JOIN customers c ON s.customer_id=c.customer_id
GROUP BY c.customer_name
HAVING SUM(s.total_amount) > (SELECT AVG(total_amount) FROM sales);
`
- **Insight:** Identifies premium customers for marketing or loyalty campaigns. [Ananya Sharma followed by Arjun Patel]
