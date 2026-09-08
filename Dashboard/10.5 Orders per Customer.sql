## 10.5 Orders per Customer ##

SELECT
    c.CustomerKey,
    c.FirstName,
    c.LastName,

    COUNT(DISTINCT s.OrderNumber) AS total_orders,

    ROUND(
        SUM(s.OrderQuantity * p.ProductPrice),
        2
    ) AS revenue

FROM customers c

JOIN sales s
    ON c.CustomerKey = s.CustomerKey

JOIN products p
    ON s.ProductKey = p.ProductKey

GROUP BY
    c.CustomerKey,
    c.FirstName,
    c.LastName

ORDER BY total_orders DESC;
