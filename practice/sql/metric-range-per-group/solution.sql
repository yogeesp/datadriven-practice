SELECT
  department,
  MAX(metric_value) - MIN(metric_value) AS metric_spread
FROM employee_metrics
GROUP BY 1
ORDER BY 1
