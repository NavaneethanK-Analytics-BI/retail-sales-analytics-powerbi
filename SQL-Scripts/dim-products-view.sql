-- =============================================
-- View Name : vw_dim_products
-- Purpose   : Creates product dimension view
--             for retail analytics reporting
-- =============================================

ALTER VIEW vw_dim_products AS

SELECT DISTINCT
    ProductID,
    Description AS ProductName

FROM (
    
    SELECT
        StockCode AS ProductID,
        Description

    FROM online_retail_raw

    WHERE
        Invoice NOT LIKE 'C%'
        AND Customer_ID IS NOT NULL
        AND Description NOT IN ('Manual', 'Next Day Carriage')

) p;
