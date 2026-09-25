SELECT
  *
FROM (
  SELECT
    username,
    account_status,
    MAX(session_start) AS last_login,
    COALESCE(
      SUM(total_amount),
      0
      ) AS lifetime_spend
  FROM users AS u
  LEFT JOIN user_sessions AS us
    ON u.user_id = us.user_id
  LEFT JOIN transactions AS t
    ON u.user_id = t.user_id
    where account_status = 'active'
  GROUP BY username
)
WHERE (
  CAST(last_login AS DATE) < NOW() - INTERVAL '90 days' 

) or last_login is null
