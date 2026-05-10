-- =============================================
-- Query Name : monthly-sales-analysis
-- Purpose    : Generates monthly sales KPIs
--               for retail performance analysis
-- =============================================

SELECT

    YEAR(OrderDate) AS Year,
    MONTH(OrderDate) AS Month_No,
    DATENAME(MONTH, OrderDate) AS Month_Name,

    SUM(SalesAmount) AS Total_Sales,
    COUNT(DISTINCT OrderID) AS Total_Orders,
    SUM(Quantity) AS Total_Quantity,
    COUNT(DISTINCT Customer_ID) AS Total_Customers,

    SUM(SalesAmount) * 1.0 /
    NULLIF(COUNT(DISTINCT OrderID), 0) AS Avg_Order_Value

FROM vw_fact_sales

GROUP BY
    YEAR(OrderDate),
    MONTH(OrderDate),
    DATENAME(MONTH, OrderDate)

ORDER BY
    Year,
    Month_No;
