SELECT
  svc_name,
  min_uptime
FROM (
  SELECT
    svc_name,
    MIN(uptime) AS min_uptime,
    DENSE_RANK() OVER (
      ORDER BY MIN(uptime)
    ) AS rnk
  FROM svc_health
  GROUP BY svc_name
) AS ranked
WHERE rnk <= 10
ORDER BY min_uptime
