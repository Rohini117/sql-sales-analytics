
---

### **3️⃣ insights/regional_performance.md**

# Regional Performance Analysis

Focuses on revenue contribution and product popularity per region.

## Revenue by Region
- **Query Used:** See revenue_analysis.md
- **Insight:** North region leads in total revenue.

## Product Popularity per Region
- **Query Used:**
`
SELECT r.region_name, p.product_name, SUM(s.quantity) AS units_sold
FROM sales s
JOIN regions r ON s.region_id=r.region_id
JOIN products p ON s.product_id=p.product_id
GROUP BY r.region_name, p.product_name
ORDER BY r.region_name, units_sold DESC;`
- **Insight:** Electronics products sell more in North and South, while Furniture is popular in West.
  
## Regional Insights
- **Insight:** West region prefers furniture like desks and chairs.
- **Insight:** East region has consistent but moderate sales.
