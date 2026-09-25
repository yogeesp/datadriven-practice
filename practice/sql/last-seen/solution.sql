select user_id,max(session_start) latest_session_start
from user_sessions
group by user_id
