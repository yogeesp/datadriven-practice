select u.user_id,coalesce(count(distinct event_type),0) event_type_count
from users u
left join event_data e
on u.user_id = e.user_id
group by u.user_id
