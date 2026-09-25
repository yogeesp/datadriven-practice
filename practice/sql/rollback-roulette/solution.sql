SELECT 
    COUNT(*) AS failed_deployment_count
FROM 
    deploy_logs
WHERE 
    svc_name = 'payment-api' AND 
    LOWER(status) = 'failed';
