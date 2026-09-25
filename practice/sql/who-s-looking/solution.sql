select search_term, count(distinct user_id) unique_searchers
from search_queries
group by search_term
order by unique_searchers desc,search_term
