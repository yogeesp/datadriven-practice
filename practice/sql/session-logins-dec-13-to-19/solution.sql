select user_id
from user_sessions
where (session_start :: date)> '2026-12-13' 
and (session_start :: date) <= '2026-12-19' 
