SELECT 
    d.device_type, 
    COUNT(*) AS user_sessions
FROM 
    user_sessions us
JOIN 
    devices d ON us.device_id = d.device_id
GROUP BY 
    d.device_type
ORDER BY 
    user_sessions DESC, 
    d.device_type ASC
limit 1;
