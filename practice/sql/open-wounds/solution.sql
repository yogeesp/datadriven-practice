SELECT
  svc_name,
  alert_id,
  severity,
  status,
  fired_at
from
(SELECT
  svc_name,
  alert_id,
  severity,
  status,
  fired_at,
  ROW_NUMBER() over(partition by svc_name order by fired_at::timestamp) rnk
FROM alert_events
where resolved is null
)
where rnk = 1
