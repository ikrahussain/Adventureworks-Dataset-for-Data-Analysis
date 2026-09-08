## 10.5 Revenue vs Profitability ##

SELECT
    t.Country,
    t.Region,

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
    t.SalesTerritoryKey,
    t.Country,
    t.Region

ORDER BY
    profit_margin_percentage ASC;
