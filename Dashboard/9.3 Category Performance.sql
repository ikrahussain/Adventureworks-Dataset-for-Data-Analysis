DESCRIBE categories;

DESCRIBE subcategories;

## 9.3 Category Performance ##

USE AdventureWorks;

SELECT
    c.CategoryName,

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
        SUM(
            s.OrderQuantity *
            (p.ProductPrice - p.ProductCost)
        )
        / SUM(s.OrderQuantity * p.ProductPrice) * 100,
        2
    ) AS profit_margin_percentage

FROM sales s

JOIN products p
    ON s.ProductKey = p.ProductKey

JOIN subcategories sc
    ON p.ProductSubcategoryKey = sc.ProductSubcategoryKey

JOIN categories c
    ON sc.ProductCategoryKey = c.ProductCategoryKey

GROUP BY
    c.ProductCategoryKey,
    c.CategoryName

ORDER BY revenue DESC;
