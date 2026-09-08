## 8.3 Year-on-Year Growth ##

WITH yearly_sales AS (

    SELECT
        YEAR(s.OrderDate) AS year,

        SUM(s.OrderQuantity * p.ProductPrice) AS revenue,

        SUM(
            s.OrderQuantity *
            (p.ProductPrice - p.ProductCost)
        ) AS profit

    FROM sales s

    JOIN products p
        ON s.ProductKey = p.ProductKey

    GROUP BY YEAR(s.OrderDate)
)

SELECT
    year,

    ROUND(revenue, 2) AS revenue,
    ROUND(profit, 2) AS profit,

    ROUND(
        (
            revenue -
            LAG(revenue) OVER (ORDER BY year)
        )
        /
        LAG(revenue) OVER (ORDER BY year)
        * 100,
        2
    ) AS revenue_growth_percentage

FROM yearly_sales

ORDER BY year;
