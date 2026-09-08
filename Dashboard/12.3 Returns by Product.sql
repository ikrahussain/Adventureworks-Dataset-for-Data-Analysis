##12.3 Returns by Product ##

SELECT
    p.ProductName,

    SUM(r.ReturnQuantity) AS returned_units,

    ROUND(
        SUM(r.ReturnQuantity) /
        NULLIF(
            (
                SELECT SUM(s.OrderQuantity)
                FROM sales s
                WHERE s.ProductKey = r.ProductKey
            ),
            0
        ) * 100,
        2
    ) AS return_rate_percentage

FROM returns r

JOIN products p
    ON r.ProductKey = p.ProductKey

GROUP BY
    r.ProductKey,
    p.ProductName

ORDER BY
    returned_units DESC;
