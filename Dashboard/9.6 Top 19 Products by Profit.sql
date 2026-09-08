## 9.6 Top 19 Products by Profit ##

SELECT
    p.ProductName,

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
        (
            (p.ProductPrice - p.ProductCost)
            / p.ProductPrice
        ) * 100,
        2
    ) AS margin_percentage

FROM sales s

JOIN products p
    ON s.ProductKey = p.ProductKey

GROUP BY
    p.ProductKey,
    p.ProductName,
    p.ProductPrice,
    p.ProductCost

ORDER BY profit DESC

LIMIT 10;
