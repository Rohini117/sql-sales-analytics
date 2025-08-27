# Revenue Analysis

This analysis summarizes the revenue performance across products, regions, and time periods.

## Total Revenue
- **Query Used:** `SELECT SUM(total_amount) AS total_revenue FROM sales;`
- **Insight:** Total revenue generated is approximately ₹[1121500]. 

## Revenue by Product
- **Query Used:**
- `
SELECT p.product_name, SUM(s.total_amount) AS revenue
FROM sales s
JOIN products p ON s.product_id=p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;`
- **Insight:** Electronics products dominate revenue, with laptops and smartphones leading.

## Revenue by Region
- **Query Used:**
- `
SELECT r.region_name, SUM(s.total_amount) AS revenue
FROM sales s
JOIN regions r ON s.region_id=r.region_id
GROUP BY r.region_name
ORDER BY revenue DESC;`
- **Insight:** North region shows the highest revenue contribution, followed by South and West.

## Monthly Revenue Trend
- **Query Used:**
- `
SELECT DATE_FORMAT(sale_date,'%Y-%m') AS month, SUM(total_amount) AS revenue
FROM sales
GROUP BY month
ORDER BY month;`
- **Insight:** Revenue is steadily increasing, with noticeable spikes during March and July.


