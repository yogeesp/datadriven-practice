select 
  username,account_status,signup_date,session_start
  from users u
  LEFT JOIN user_sessions us
  ON u.user_id = us.user_id;
  
