## 4. Revenue by Year ##

SELECT
    YEAR(s.OrderDate) AS year,

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

GROUP BY YEAR(s.OrderDate)

ORDER BY year;
