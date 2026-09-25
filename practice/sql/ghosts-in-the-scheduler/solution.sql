SELECT 
    COUNT(*) AS running_jobs
FROM 
    batch_jobs
WHERE 
    started LIKE '%2025%' AND 
    LOWER(status) = 'running' AND 
    LOWER(ended) IS NULL;
