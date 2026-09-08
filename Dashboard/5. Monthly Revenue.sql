## 5. Monthly Revenue ##

SELECT
    YEAR(s.OrderDate) AS year,
    MONTH(s.OrderDate) AS month,

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
    MONTH(s.OrderDate)

ORDER BY
    year,
    month;
