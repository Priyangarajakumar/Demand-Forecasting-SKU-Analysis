-- Data cleaning and validation

CREATE TABLE sales_clean AS
SELECT
    row_id,
    order_id,
    DATE(order_date) AS order_date,
    product_id,
    category,
    sub_category,
    region,
    quantity,
    sales,
    profit,
    discount
FROM retail_sales_raw
WHERE quantity > 0
  AND sales IS NOT NULL
  AND order_date IS NOT NULL;
