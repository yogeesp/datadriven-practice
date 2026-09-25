select user_id,avg(results_count)
from search_queries
where user_id is not null
group by user_id
