SELECT creator_id,avg(duration_seconds) avg_duration
from content_items
group by creator_id
having sum(duration_seconds) >= 3600
order by duration_seconds desc
