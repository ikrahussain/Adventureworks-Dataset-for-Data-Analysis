## 13.1 Monthly Sales View ##

CREATE OR REPLACE VIEW vw_monthly_sales AS

SELECT
    YEAR(s.OrderDate) AS year,
    MONTH(s.OrderDate) AS month,

    COUNT(DISTINCT s.OrderNumber) AS total_orders,

    SUM(s.OrderQuantity) AS units_sold,

    ROUND(
        SUM(s.OrderQuantity * p.ProductPrice),
        2
    ) AS revenue,

    ROUND(
        SUM(
            s.OrderQuantity *
            (p.ProductPrice - p.ProductCost)
        ),
        2
    ) AS profit

FROM sales s

JOIN products p
    ON s.ProductKey = p.ProductKey

GROUP BY
    YEAR(s.OrderDate),
    MONTH(s.OrderDate);
    
    SELECT *
FROM vw_monthly_sales
ORDER BY year, month;

