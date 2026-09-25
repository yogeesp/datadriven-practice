SELECT DISTINCT
  (nspace),
  max(
    CASE
      WHEN rnk = 1 THEN pod_name
      ELSE NULL
    END
  ) AS highest_cpu_pod,
  max(
    CASE
      WHEN rnk = 2 THEN pod_name
      ELSE NULL
    END
  ) AS second_highest_cpu_pod
FROM (
  SELECT
    nspace,
    pod_name,
    DENSE_RANK() OVER (
      PARTITION BY nspace
      ORDER BY cpu_used DESC
    ) AS rnk
  FROM k8s_pods
)
WHERE rnk <= 2
GROUP BY  nspace
