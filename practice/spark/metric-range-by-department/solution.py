df = employee_metrics
    .groupBy(F.col('department'))
    .agg((F.avg('metric_value').alias('avg_value')),
         (F.min('metric_value').alias('min_value')),
         (F.max('metric_value').alias('max_value')))
    .orderBy('avg_value', ascending=False)
