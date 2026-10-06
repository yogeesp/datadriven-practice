WITH avg_info AS (
  SELECT
    UPPER(method) AS method,
    latency,
    ROW_NUMBER() OVER (
      PARTITION BY UPPER(method)
      ORDER BY latency
    ) AS latency_info
  FROM api_calls
  WHERE latency IS NOT NULL
)

SELECT
  method,
  ROUND(AVG(latency), 2) AS fastest_five_avg
FROM avg_info
WHERE latency_info <= 5
GROUP BY 1
ORDER BY 1
