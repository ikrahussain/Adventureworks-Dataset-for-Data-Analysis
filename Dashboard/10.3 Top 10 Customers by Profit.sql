## 10.3 Top 10 Customers by Profit ##

SELECT
    c.CustomerKey,
    c.FirstName,
    c.LastName,

    COUNT(DISTINCT s.OrderNumber) AS total_orders,

    SUM(s.OrderQuantity) AS units_purchased,

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

FROM customers c

JOIN sales s
    ON c.CustomerKey = s.CustomerKey

JOIN products p
    ON s.ProductKey = p.ProductKey

GROUP BY
    c.CustomerKey,
    c.FirstName,
    c.LastName

ORDER BY profit DESC

LIMIT 10;
