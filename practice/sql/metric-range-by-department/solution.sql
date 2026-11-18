SELECT
  department,
  avg(metric_value) avg_value,
  min(metric_value) min_value,
  max(metric_value) max_value
FROM employee_metrics
group by department
order by avg_value desc
