SELECT
  account_status,
  COUNT(transaction_id) AS transaction_count,
  COUNT(distinct u.user_id) AS user_count,
  SUM(total_amount) AS total_revenue
FROM users AS u
LEFT JOIN transactions AS t
  ON u.user_id = t.user_id
GROUP BY account_status
HAVING transaction_count > 5
order by total_revenue desc
