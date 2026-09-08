## 12.5 Returns by Category ##

SELECT
    c.CategoryName,

    SUM(r.ReturnQuantity) AS returned_units

FROM returns r

JOIN products p
    ON r.ProductKey = p.ProductKey

JOIN subcategories sc
    ON p.ProductSubcategoryKey = sc.ProductSubcategoryKey

JOIN categories c
    ON sc.ProductCategoryKey = c.ProductCategoryKey

GROUP BY
    c.CategoryName

ORDER BY
    returned_units DESC;
