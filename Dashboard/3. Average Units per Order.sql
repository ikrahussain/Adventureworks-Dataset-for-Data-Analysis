## 3. Average Units per Order ##

SELECT
    ROUND(
        SUM(OrderQuantity) / COUNT(DISTINCT OrderNumber),
        2
    ) AS average_units_per_order
FROM sales;
