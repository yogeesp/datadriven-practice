select
    event_type,count(*) event_count
from event_data
where tags like '%mobile%'
group by event_type
order by event_count desc
