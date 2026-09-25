SELECT endpoint,count(call_id) call_count,
ROUND(avg(latency),3) avg_latency,
ROUND(SUM(case when status = 200 then 1. else 0 end)/
avg(latency),3) efficiency_ratio
from api_calls
group by endpoint
HAVING count(call_id) >=5
order by efficiency_ratio DESC
