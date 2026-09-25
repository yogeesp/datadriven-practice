SELECT 
    d.device_type, 
    COUNT(*) AS session_count
FROM 
    user_sessions us
inner JOIN 
    devices d ON us.device_id = d.device_id
GROUP BY 
    d.device_type
ORDER BY 
    session_count DESC, 
    device_type ASC;
