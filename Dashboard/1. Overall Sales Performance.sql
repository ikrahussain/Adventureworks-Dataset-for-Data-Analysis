## 1. Overall Sales Performance ##

USE AdventureWorks;

SELECT
    COUNT(DISTINCT s.OrderNumber) AS total_orders,
    COUNT(*) AS total_sales_lines,
    SUM(s.OrderQuantity) AS total_units_sold,

    ROUND(
        SUM(s.OrderQuantity * p.ProductPrice),
        2
    ) AS total_revenue,

    ROUND(
        SUM(s.OrderQuantity * p.ProductCost),
        2
    ) AS total_cost,

    ROUND(
        SUM(
            s.OrderQuantity *
            (p.ProductPrice - p.ProductCost)
        ),
        2
    ) AS total_profit,

    ROUND(
        SUM(
            s.OrderQuantity *
            (p.ProductPrice - p.ProductCost)
        )
        /
        SUM(s.OrderQuantity * p.ProductPrice)
        * 100,
        2
    ) AS profit_margin_percentage

FROM sales s
JOIN products p
    ON s.ProductKey = p.ProductKey;
