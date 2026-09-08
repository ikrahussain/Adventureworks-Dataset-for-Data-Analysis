## 10.7 Customer Segmentation ##

SELECT
    customer_segment,
    COUNT(*) AS number_of_customers,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(AVG(revenue), 2) AS average_revenue
FROM (
    SELECT
        c.CustomerKey,
        SUM(s.OrderQuantity * p.ProductPrice) AS revenue,

        CASE
            WHEN SUM(s.OrderQuantity * p.ProductPrice) >= 5000
                THEN 'High Value'

            WHEN SUM(s.OrderQuantity * p.ProductPrice) >= 1000
                THEN 'Medium Value'

            ELSE 'Low Value'
        END AS customer_segment

    FROM customers c

    JOIN sales s
        ON c.CustomerKey = s.CustomerKey

    JOIN products p
        ON s.ProductKey = p.ProductKey

    GROUP BY c.CustomerKey
) AS customer_segments

GROUP BY customer_segment
ORDER BY total_revenue DESC;
