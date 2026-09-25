select 
svc_name,region,latency,
round(avg(latency) over(partition by region),3) avg_region_latency
from svc_health
