select device_type,avg(session_duration_sec)
avg_duration,
max(session_duration_sec) max_duration
,count(*)
from user_sessions
inner join devices
ON devices.device_id = user_sessions.device_id
group by device_type
