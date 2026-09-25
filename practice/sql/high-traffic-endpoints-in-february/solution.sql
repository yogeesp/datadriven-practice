SELECT COUNT(*) AS endpoint_count
FROM (
    SELECT endpoint
    FROM api_calls
    WHERE call_time >= '2026-02-01'
      AND call_time < '2026-03-01'
    GROUP BY endpoint
    HAVING COUNT(*) >= 100
);
