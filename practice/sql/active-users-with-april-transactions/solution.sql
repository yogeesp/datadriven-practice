SELECT
  COUNT(DISTINCT a.user_id)
FROM users AS a
JOIN transactions AS b
  ON a.user_id = b.user_id
WHERE account_status = 'active'
  AND transaction_date >= '2026-04-01' and
  transaction_date < '2026-05-01'
