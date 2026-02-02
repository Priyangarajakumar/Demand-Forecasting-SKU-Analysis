-- 3-month moving average demand forecast

WITH monthly_demand AS (
    SELECT
        strftime('%Y-%m', order_date) AS year_month,
        SUM(quantity) AS monthly_demand
    FROM sales_clean
    GROUP BY year_month
),
forecast AS (
    SELECT
        year_month,
        monthly_demand,
        AVG(monthly_demand) OVER (
            ORDER BY year_month
            ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
        ) AS forecast_3_month_ma
    FROM monthly_demand
)
SELECT * FROM forecast;
