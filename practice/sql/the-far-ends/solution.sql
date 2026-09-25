SELECT *
FROM employee_metrics
WHERE 
    (metric_value <= 30 OR metric_value >= 60) and metric_name = 'headcount'
ORDER BY metric_value DESC;
