df = cost_allocs
    .groupBy('category')
    .agg(F.sum('amount').alias('total_amount'))
