df = infra_nodes
    .groupBy("region")
    .agg(
        F.count("*").alias("total_nodes"),
        F.countDistinct("node_type").alias("unique_types")
    )
    .orderBy(F.col("total_nodes").desc(),F.col("region"))
