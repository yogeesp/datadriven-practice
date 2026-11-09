SELECT
    team_name,
    region,
    total_amount,
    avg_alloc_dollars
    ,rank() over(partition by region order by total_amount desc) rnk
from
(select lower(team_name) team_name,region,
sum(amount) total_amount,
cast(avg(amount) as integer) avg_alloc_dollars

from cost_allocs
group by lower(team_name),region
HAVING sum(amount) > 0
order by total_amount desc)
order by region,total_amount desc
