## 11.1 Performance by Continent ##

USE AdventureWorks;

SELECT
    t.Continent,

    COUNT(DISTINCT s.OrderNumber) AS total_orders,

    SUM(s.OrderQuantity) AS units_sold,

    ROUND(
        SUM(s.OrderQuantity * p.ProductPrice),
        2
    ) AS revenue,

    ROUND(
        SUM(s.OrderQuantity * p.ProductCost),
        2
    ) AS cost,

    ROUND(
        SUM(
            s.OrderQuantity *
            (p.ProductPrice - p.ProductCost)
        ),
        2
    ) AS profit,

    ROUND(
        SUM(
            s.OrderQuantity *
            (p.ProductPrice - p.ProductCost)
        )
        /
        SUM(s.OrderQuantity * p.ProductPrice)
        * 100,
        2
    ) AS profit_margin_percentage

FROM sales s

JOIN products p
    ON s.ProductKey = p.ProductKey

JOIN territory t
    ON s.TerritoryKey = t.SalesTerritoryKey

GROUP BY
    t.Continent

ORDER BY
    revenue DESC;
