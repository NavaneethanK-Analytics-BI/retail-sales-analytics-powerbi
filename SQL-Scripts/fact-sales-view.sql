-- =============================================
-- View Name : vw_fact_sales
-- Purpose   : Creates fact sales view for
--             retail sales analytics reporting
-- =============================================

CREATE VIEW vw_fact_sales AS

SELECT
    oi.OrderID,
    o.OrderDate,
    oi.ProductID,
    o.Customer_ID,
    o.Country,
    oi.Quantity,
    oi.UnitPrice,
    oi.SalesAmount

FROM vw_order_items_clean oi

INNER JOIN vw_orders_clean o
    ON oi.OrderID = o.OrderID;
