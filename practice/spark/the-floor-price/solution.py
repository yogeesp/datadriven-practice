df = cloud_costs
    .filter(F.col("acct_id").isNotNull())
    .groupBy(F.upper(F.col("provider")))
    .agg(F.max("amount"))
