select device_type,avg(session_duration_sec)
from devices d
inner join user_sessions u
on d.device_id = u.device_id
group by device_type
