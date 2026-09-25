select db_name,count(migr_id) total_migrations,
sum(case when status = 'rolled_back' then 1 else 0 end) 
total_rollbacks
from migrations
group by db_name
order by total_rollbacks DESC
