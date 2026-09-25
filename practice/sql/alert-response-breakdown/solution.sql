SELECT svc_name,
count(*) total_alerts,
SUM(case when lower(severity) = 'critical' THEN 
1 else 0 END) AS critical_count,
SUM(
  case when lower(severity) = 'high' THEN 
  1 else 0 END) AS high_count,
 SUM(
 case when trim(ack_by) IS NULL  THEN 
  1 else 0 END) AS unacked_count,
ROUND( count(*)/
  COUNT(distinct status)) avg_per_status
from alert_events
GROUP BY svc_name
order by total_alerts DESC;
