select 
team_name,
sum(case when category= 'compute' then 1 else 0 end)compute_count,
sum(amount) total_cost
from cost_allocs
group by team_name
