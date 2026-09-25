SELECt u.username,count(us.session_id) as session_count,
MAX(session_duration_sec) 
from users u 
left join user_sessions us
ON u.user_id = us.user_id
group by u.user_id
