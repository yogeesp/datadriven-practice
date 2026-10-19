select svc_name,region,latency,
avg(latency) over (partition by region) avg_latency
from svc_health
order by region,svc_name,latency
