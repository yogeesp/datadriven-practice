SELECT
  u.user_id,
  username,
  COUNT(*) AS session_count,
  SUM(pages_viewed) total_pages
FROM users AS u
INNER JOIN user_sessions AS us
  ON u.user_id = us.user_id
 where account_status = 'active'
group by u.user_id
having COUNT(*) > 3 and SUM(pages_viewed) > 100
order by total_pages desc
