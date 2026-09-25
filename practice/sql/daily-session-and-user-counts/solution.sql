SELECT 
  cast (session_start as DATE) session_date,
  count(session_id) total_sessions,
  count(distinct(user_id)) unique_users
from user_sessions
group by session_date
order by session_date
