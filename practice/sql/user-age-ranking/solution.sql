SELECT
  user_id,
  DENSE_RANK() OVER (
    ORDER BY age_bucket DESC
  ) AS rnk
FROM users
