select env_name,count(*) deploy_count
from deploy_logs
group by env_name
order by deploy_count desc
