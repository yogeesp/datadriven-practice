SELECT svc_name,
ROUND (SUM(CASE WHEN LOWER(status) <> 'healthy' 
    THEN 1.00 ELSE 0.00 END)
/count(*),3) negative_ratio
from svc_health
group by svc_name
having min(cast(checked as date)) between '2026-01-01'
  and '2026-03-31'
and negative_ratio > 0.2
