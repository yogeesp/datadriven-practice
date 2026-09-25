SELECT 
    status, 
    COUNT(*) AS check_count
FROM 
    svc_health
where svc_name = 'auth-svc'
GROUP BY 
    status
ORDER BY 
    check_count DESC, 
    status ASC;
