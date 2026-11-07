select lower(author),round(avg(latency),2) score
from deploy_logs d
inner JOIN svc_health s
on d.svc_name = s.svc_name
group by lower(author)
order by score desc
