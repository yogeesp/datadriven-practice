select distinct username
from users u
inner join search_queries s on
u.user_id = s.user_id
inner join page_views p on
s.user_id = p.user_id
inner join transactions t on
p.user_id = t.user_id
order by username
