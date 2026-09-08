## 12.2 Returns over Time ##

SELECT
    YEAR(r.ReturnDate) AS year,
    MONTH(r.ReturnDate) AS month,

    SUM(r.ReturnQuantity) AS returned_units

FROM returns r

GROUP BY
    YEAR(r.ReturnDate),
    MONTH(r.ReturnDate)

ORDER BY
    year,
    month;
