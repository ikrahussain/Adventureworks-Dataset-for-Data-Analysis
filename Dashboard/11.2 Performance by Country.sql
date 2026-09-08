## 11.2 Performance by Country ##

SELECT
    t.Continent,
    t.Country,

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
    t.Continent,
    t.Country

ORDER BY
    revenue DESC;
