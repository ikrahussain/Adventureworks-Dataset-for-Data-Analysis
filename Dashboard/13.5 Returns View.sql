## 13.5 Returns View ##

CREATE OR REPLACE VIEW vw_returns_analysis AS

SELECT
    r.ReturnDate,
    r.ProductKey,
    p.ProductName,
    r.TerritoryKey,
    t.Country,
    t.Region,
    t.Continent,
    r.ReturnQuantity

FROM returns r

JOIN products p
    ON r.ProductKey = p.ProductKey

JOIN territory t
    ON r.TerritoryKey = t.SalesTerritoryKey;

SELECT *
FROM vw_returns_analysis
LIMIT 20;
