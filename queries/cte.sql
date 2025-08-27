-- Monthly top product
WITH monthly_sales AS (
    SELECT DATE_FORMAT(sale_date,'%Y-%m') AS month,
           p.product_name,
           SUM
