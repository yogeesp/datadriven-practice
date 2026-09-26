SELECT AVG(cpu_pct) AS avg_cpu_percent
FROM infra_nodes
WHERE node_type = 'gpu';
