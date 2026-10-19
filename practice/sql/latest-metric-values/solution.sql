select department,metric_name,max(metric_value)
from employee_metrics
group by 1,2
order by 1
