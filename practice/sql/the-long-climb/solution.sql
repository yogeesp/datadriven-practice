SELECT
  user_id,
  product_id,
  total_amount,
  transaction_date,
  SUM(total_amount) OVER(PARTITION BY user_id 
ORDER BY transaction_date,  transaction_id 
ROWS BETWEEN UNBOUNDED preceding AND CURRENT ROW) cummulative_sales
FROM transactions
order by user_id,transaction_date,transaction_id
