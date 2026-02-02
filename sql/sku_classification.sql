-- SKU demand behavior classification

WITH sku_demand AS (
    SELECT
        product_id,
        AVG(quantity) AS avg_sku_demand
    FROM sales_clean
    GROUP BY product_id
),
overall_avg AS (
    SELECT AVG(quantity) AS overall_avg_demand
    FROM sales_clean
)
SELECT
    s.product_id,
    CASE
        WHEN s.avg_sku_demand >= o.overall_avg_demand
        THEN 'Fast-Moving SKU'
        ELSE 'Slow-Moving SKU'
    END AS sku_type
FROM sku_demand s
CROSS JOIN overall_avg o;
