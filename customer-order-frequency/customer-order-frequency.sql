/* Write your T-SQL query statement below */
SELECT c.customer_id, c.name
FROM (
    SELECT o.customer_id, o.month, SUM(o.quantity * p.price) AS customer_paid
    FROM (
        SELECT customer_id, product_id, quantity, MONTH(order_date) AS month
        FROM Orders
        WHERE MONTH(order_date) IN (6, 7) AND YEAR(order_date) = 2020
    ) AS o
    LEFT OUTER JOIN Product p
    ON o.product_id = p.product_id
    GROUP BY o.customer_id, o.month
    HAVING 100 <= SUM(o.quantity * p.price)
) AS o
LEFT OUTER JOIN Customers c
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
HAVING COUNT(*) = 2
    
