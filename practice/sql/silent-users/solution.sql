SELECT
  u.username,
  u.signup_date
FROM users AS u
LEFT JOIN search_queries AS sq
  ON u.user_id = sq.user_id
WHERE sq.query_id IS NULL
ORDER BY u.signup_date DESC
