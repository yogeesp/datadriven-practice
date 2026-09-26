SELECT AVG(latency) AS avg_latency
FROM api_calls
WHERE endpoint = '/api/v1/search' ;
