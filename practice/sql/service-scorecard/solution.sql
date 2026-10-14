select p.svc_name,count(distinct assignment_id),count(distinct alert_id)
from pod_assignments p
left join alert_events a
on p.svc_name = a.svc_name
group by p.svc_name
