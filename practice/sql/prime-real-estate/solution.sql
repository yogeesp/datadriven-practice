SELECT
  device_type,
  COUNT(*) AS chrome_users
FROM devices
WHERE browser = 'Chrome'
GROUP BY device_type
HAVING COUNT(*) >= 2
ORDER BY chrome_users DESC
