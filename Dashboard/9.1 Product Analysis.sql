## 9.1 Product Analysis ##

SELECT
    p.ProductKey,
    p.ProductName,
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
        / SUM(s.OrderQuantity * p.ProductPrice) * 100,
        2
    ) AS profit_margin_percentage

FROM sales s

JOIN products p
    ON s.ProductKey = p.ProductKey

GROUP BY
    p.ProductKey,
    p.ProductName

ORDER BY revenue DESC;
