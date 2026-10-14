select d.svc_name	,version	,env_name	,d.status
from deploy_logs d
left join alert_events a
on d.svc_name = a.svc_name
where alert_id IS NULL
