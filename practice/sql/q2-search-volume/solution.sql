select count(*)
from search_queries
where query_time::date >= '2026-04-01'
and query_time::date < '2026-07-01'
