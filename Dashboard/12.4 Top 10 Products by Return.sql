## 12.4 Top 10 Products by Return ##

SELECT
    p.ProductName,
    SUM(r.ReturnQuantity) AS returned_units

FROM returns r

JOIN products p
    ON r.ProductKey = p.ProductKey

GROUP BY
    r.ProductKey,
    p.ProductName

ORDER BY
    returned_units DESC

LIMIT 10;
