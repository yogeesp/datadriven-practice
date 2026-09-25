select avg(latency) avg_update_call_latency
from
(select 
  latency,
  row_number() over(partition by user_id order by 
  CAST(call_time as date)) rankin
  from api_calls)
where rankin > 1
