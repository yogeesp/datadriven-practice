select content_type,coalesce(sum(duration_seconds),0) total_duration,
count(*)
from content_items
group by content_type
order by total_duration
