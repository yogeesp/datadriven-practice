SELECT
  u.user_id,
  u.username,
  SUM(total_amount) AS total_spend
FROM users AS u
inner JOIN transactions AS t
  ON u.user_id = t.user_id
GROUP BY u.user_id, username
ORDER BY username
