## 2. Average Order Value ##

SELECT
    ROUND(
        SUM(s.OrderQuantity * p.ProductPrice)
        / COUNT(DISTINCT s.OrderNumber),
        2
    ) AS average_order_value
FROM sales s
JOIN products p
    ON s.ProductKey = p.ProductKey;
