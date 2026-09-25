SELECT
  CASE
    WHEN session_duration_sec < 60 THEN 'under_1min'
    WHEN session_duration_sec < 300 THEN '1_to_5min'
    WHEN session_duration_sec < 900 THEN '5_to_15min'
    WHEN session_duration_sec < 1800 THEN '15_to_30min'
    ELSE 'over_30min'
  END AS duration_bucket,
  COUNT(*) AS session_count,
  round(AVG(pages_viewed),3) AS avg_pages
FROM user_sessions
GROUP BY duration_bucket
ORDER BY avg_pages DESC, duration_bucket
