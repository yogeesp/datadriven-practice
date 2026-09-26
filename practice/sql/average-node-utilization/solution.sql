SELECT
  region,
  node_type,
  AVG(cpu_pct) AS avg_cpu_utilization,
  AVG(mem_pct) AS avg_mem_utilization
FROM infra_nodes
GROUP BY region, node_type
ORDER BY region, node_type
