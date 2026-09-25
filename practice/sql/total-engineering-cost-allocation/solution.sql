select sum(amount) total_amount
from cost_allocs
where lower(team_name) in ('data-eng', 
'backend', 'devops','platform' )
