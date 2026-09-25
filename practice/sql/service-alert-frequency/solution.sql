select svc_name,count(alert_id),
dense_rank() over (order by count(*) desc)
from alert_events
group by svc_name
