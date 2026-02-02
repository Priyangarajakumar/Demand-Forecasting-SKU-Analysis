-- Monthly demand aggregation

SELECT
    strftime('%Y-%m', order_date) AS year_month,
    SUM(quantity) AS monthly_demand
FROM sales_clean
GROUP BY year_month
ORDER BY year_month;
