SELECT 
    user_id, 
    username, 
    email, 
    signup_date, 
    account_status, 
    age_bucket
FROM 
    users
ORDER BY 
    username ASC, 
    age_bucket DESC;
