SELECT
  user_id,
  SUM(pages_viewed) AS total_pages_viewed
FROM user_sessions
GROUP BY user_id
HAVING SUM(pages_viewed) BETWEEN 1 AND 9
ORDER BY total_pages_viewed
