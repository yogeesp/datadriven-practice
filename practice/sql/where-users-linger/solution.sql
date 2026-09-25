select os_name,avg(session_duration_sec) avg_duration
from devices d
inner join
user_sessions us
on d.device_id = us.device_id
where device_type = 'mobile'
group by os_name
order by avg_duration desc
limit 1
