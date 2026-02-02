# Demand Forecasting & SKU Behavior Analysis

## 📌 Project Overview
This project analyzes multi-year retail sales data to understand demand patterns, classify SKUs based on movement behavior, and evaluate forecast accuracy using a rolling 3-month moving average. The objective is to support inventory planning and demand forecasting decisions.

## 📊 Business Problem
Retail businesses often struggle with:
- Demand volatility across time
- Identifying fast- vs slow-moving products
- Forecasting future demand accurately for inventory optimization

This project addresses these challenges by combining SQL-based data analysis with interactive Power BI dashboards.

## 🗂 Dataset
- Time period: 2014–2017
- Records: ~10,000 transactional rows
- Granularity: SKU-level retail transactions
- Key fields: order_date, product_id, category, region, quantity, sales, profit

## 🛠 Tools & Technologies
- SQL (SQLite)
- Power BI
- DAX

## 🔍 Analysis Performed
- Data cleaning and validation
- Monthly demand aggregation
- SKU demand behavior classification
- 3-month moving average demand forecasting
- Actual vs forecast demand comparison

## 📈 Key Insights
- Overall demand shows noticeable seasonality and long-term trend shifts
- ~56% of SKUs are fast-moving, while ~44% are slow-moving
- Moving average forecasts smooth demand but underestimate sharp spikes

## 📊 Dashboard Highlights
- Executive KPI cards
- Monthly demand trend
- SKU distribution by demand behavior
- Actual vs forecast demand comparison
- Interactive slicers by category, region, and SKU type

## 📷 Dashboard Preview
See images in the `/visuals` folder.

## 🚀 Future Enhancements
- Advanced forecasting models
- SKU-level forecast accuracy metrics
- Integration with inventory cost data
