select distinct user_id
from event_data
where event_type = 'purchase'
group by user_id
having count(user_id)  >=1
