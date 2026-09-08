## 12.1 Overall Returns ##

USE AdventureWorks;

SELECT
    SUM(r.ReturnQuantity) AS total_returned_units,
    COUNT(*) AS total_return_records,

    ROUND(
        SUM(r.ReturnQuantity) /
        (SELECT SUM(OrderQuantity) FROM sales) * 100,
        2
    ) AS return_rate_percentage

FROM returns r;
