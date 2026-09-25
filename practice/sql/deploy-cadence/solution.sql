SELECT
  env_name,
  count(log_id) deploy_count,
  avg(dur_secs) avg_duration,
  count(distinct svc_name) unique_services 
from deploy_logs
group by env_name
order by deploy_count
