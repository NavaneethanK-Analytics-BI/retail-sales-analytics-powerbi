# KPI Definitions

| KPI Name | Business Meaning | DAX Measure |
|---|---|---|
| Total Sales | Total revenue generated from completed sales transactions | `SUM(vw_fact_sales[sales_amount])` |
| Total Orders | Number of unique customer orders | `DISTINCTCOUNT(vw_fact_sales[order_id])` |
| Total Quantity | Total quantity of products sold | `SUM(vw_fact_sales[quantity])` |
| Total Customers | Number of unique customers who placed orders | `DISTINCTCOUNT(vw_fact_sales[customer_id])` |
| Average Order Value (AOV) | Average revenue earned per order | `DIVIDE([Total Sales], [Total Orders])` |
| Returning Customers | Customers with more than one purchase | `COUNTROWS(FILTER(CustomerOrders,[OrderCount] > 1))` |
| Sales Last Month | Sales generated in the previous month | `CALCULATE([Total Sales], PREVIOUSMONTH(vw_dim_date[date]))` |
| Sales YoY | Sales for the same period in the previous year | `CALCULATE([Total Sales], SAMEPERIODLASTYEAR(vw_dim_date[date]))` |
| Sales YoY Growth % | Percentage growth compared to previous year sales | `DIVIDE(([Total Sales] - [Sales YoY]), [Sales YoY])` |
