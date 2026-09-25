SELECT region,
count(*) critical_count
from svc_health sh
LEFT JOIN alert_events ae ON 
sh.svc_name = ae.svc_name
where lower(severity)= 'critical'
group by region
order by critical_count desc limit 5;
