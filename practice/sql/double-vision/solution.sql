SELECT
  email,
  COUNT(*) AS duplicate_count,
  MIN(signup_date::DATE) AS earliest_signup,
  MAX(signup_date::DATE) AS latest_signup
FROM users
GROUP BY email
HAVING COUNT(*) > 1;
