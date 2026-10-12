SELECT
  device_type,
  AVG(session_duration_sec),
  MAX(session_duration_sec),
  COUNT(*)
FROM user_sessions AS us
inner JOIN devices AS d
  ON us.device_id = d.device_id
GROUP BY device_type
HAVING COUNT(session_id) >= 35
