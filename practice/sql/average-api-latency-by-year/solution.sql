SELECT 
  EXTRACT(YEAR FROM call_time::timestamp) AS call_year,
  endpoint,
  AVG(latency) AS avg_latency
FROM api_calls
GROUP BY call_year, endpoint
ORDER BY call_year, endpoint;
