SELECT
  ad_campaign,
  COUNT(DISTINCT user_id) AS unique_users
FROM ad_impressions
WHERE STRFTIME('%Y', impression_time) = '2025'
GROUP BY ad_campaign
HAVING SUM(revenue) > 5
ORDER BY ad_campaign
