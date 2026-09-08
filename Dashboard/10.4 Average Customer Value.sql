## 10.4 Average Customer Value ##

SELECT
    COUNT(DISTINCT c.CustomerKey) AS active_customers,

    ROUND(
        SUM(s.OrderQuantity * p.ProductPrice)
        / COUNT(DISTINCT c.CustomerKey),
        2
    ) AS average_customer_revenue,

    ROUND(
        SUM(
            s.OrderQuantity *
            (p.ProductPrice - p.ProductCost)
        )
        / COUNT(DISTINCT c.CustomerKey),
        2
    ) AS average_customer_profit

FROM customers c

JOIN sales s
    ON c.CustomerKey = s.CustomerKey

JOIN products p
    ON s.ProductKey = p.ProductKey;
