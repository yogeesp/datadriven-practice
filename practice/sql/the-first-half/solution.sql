SELECT COUNT(DISTINCT user_id) AS num_users
FROM users
WHERE 
  EXTRACT(YEAR FROM signup_date) = 2026 AND 
  EXTRACT(MONTH FROM signup_date) >= 1 AND 
  EXTRACT(MONTH FROM signup_date) <= 7
