## 10.6 Minimum, Maximum and Average Customer Revenue ##

SELECT
    MIN(customer_revenue) AS minimum_revenue,
    MAX(customer_revenue) AS maximum_revenue,
    ROUND(AVG(customer_revenue), 2) AS average_revenue
FROM (
    SELECT
        c.CustomerKey,
        SUM(s.OrderQuantity * p.ProductPrice) AS customer_revenue
    FROM customers c
    JOIN sales s
        ON c.CustomerKey = s.CustomerKey
    JOIN products p
        ON s.ProductKey = p.ProductKey
    GROUP BY c.CustomerKey
) AS customer_sales;
