select department,fiscal_year,avg(metric_value) avg_metric_value
from employee_metrics
group by 1,2
order by 1,2
