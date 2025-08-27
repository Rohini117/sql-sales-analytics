
---

### **4️⃣ insights/product_trends.md**

# Product Trends Analysis

Shows category-wise trends, units sold, and contribution to revenue.

## Units Sold by Category
- **Query Used:**
`
SELECT p.category, SUM(s.quantity) AS units_sold
FROM sales s
JOIN products p ON s.product_id=p.product_id
GROUP BY p.category
ORDER BY units_sold DESC;`
- **Insights:** Electronics is the most sold category.

## Revenue Contribution by Category
- **Query Used:**
`
SELECT p.category, SUM(s.total_amount) AS revenue
FROM sales s
JOIN products p ON s.product_id=p.product_id
GROUP BY p.category
ORDER BY revenue DESC;`
- **Insights:** Electronics contributes the highest revenue, followed by Furniture.

## Top Performing Products
- **Query Used:** See revenue_analysis.md
- **Insights:** Laptops and Smartphones are revenue drivers, ideal for stock or promotion focus.
