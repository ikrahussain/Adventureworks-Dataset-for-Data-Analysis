## 9.5 Product Profitability ##

USE AdventureWorks;

SELECT
    p.ProductKey,
    p.ProductName,
    p.ProductPrice,
    p.ProductCost,

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
        (
            (p.ProductPrice - p.ProductCost)
            / p.ProductPrice
        ) * 100,
        2
    ) AS product_margin_percentage

FROM sales s

JOIN products p
    ON s.ProductKey = p.ProductKey

GROUP BY
    p.ProductKey,
    p.ProductName,
    p.ProductPrice,
    p.ProductCost

ORDER BY revenue DESC;

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

ORDER BY revenue DESC

LIMIT 10;

