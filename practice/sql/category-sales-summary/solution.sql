SELECT 
  p.category,
  COUNT(DISTINCT(t.transaction_id)),
  SUM(total_amount) as total_revenue
FROM products p
LEFT JOIN transactions t
ON p.product_id = t.product_id
WHERE t.transaction_date >= '2026-01-01'
AND t.transaction_date < '2027-01-01'
GROUP BY p.category
