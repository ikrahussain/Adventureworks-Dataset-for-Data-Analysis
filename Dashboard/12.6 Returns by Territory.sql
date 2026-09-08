## 12.6 Returns by Territory ##

SELECT
    t.Country,
    t.Region,

    SUM(r.ReturnQuantity) AS returned_units

FROM returns r

JOIN territory t
    ON r.TerritoryKey = t.SalesTerritoryKey

GROUP BY
    t.Country,
    t.Region

ORDER BY
    returned_units DESC;
