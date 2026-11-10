SELECT
  product_id,
  LEFT(transaction_date, 7) AS month,
  SUM(total_amount) monthly_total,
  SUM(total_amount) OVER (
    PARTITION BY product_id
    ORDER BY LEFT(transaction_date, 7)
  ) cumulative_total
FROM transactions
WHERE product_id IS NOT NULL
GROUP BY 1, 2
ORDER BY product_id, LEFT(transaction_date, 7)
