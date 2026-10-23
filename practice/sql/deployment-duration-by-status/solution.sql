select lower(svc_name),lower(status)	,
sum(dur_secs) total_duration
from deploy_logs
group by lower(trim(svc_name)),lower(status)
