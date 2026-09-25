select content_type,avg(watch_seconds)
from content_items i
inner join content_views v
on i.content_id = v.content_id
group by content_type
