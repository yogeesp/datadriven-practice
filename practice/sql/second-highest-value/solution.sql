select distinct metric_value from
(select metric_value,dense_rank() over(order by metric_value desc) rnk
from employee_metrics)
where rnk = 2
