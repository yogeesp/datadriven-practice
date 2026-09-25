SELECT
  svc_name,
  checked,
  uptime
FROM svc_health
WHERE uptime < 95
ORDER BY uptime, checked
