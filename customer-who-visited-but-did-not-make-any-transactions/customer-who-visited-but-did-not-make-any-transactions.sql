SELECT a.customer_id, count(a.visit_id) AS count_no_trans FROM visits a
LEFT JOIN transactions b on a.visit_id = b.visit_id
WHERE b.transaction_id IS NULL
GROUP BY a.customer_id

