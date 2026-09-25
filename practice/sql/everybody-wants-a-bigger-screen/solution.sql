select user_id,count(*) monitor_searches
from search_queries
where search_term ILIKE '%monitor%'
group by user_id
