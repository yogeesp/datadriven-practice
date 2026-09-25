select team_name,entry_label,amount
from
(select team_name,concat(svc_name,' - ',region) entry_label,
amount,dense_rank() over(partition by team_name order by amount desc) rnk
from cost_allocs)
where rnk <=3 
group by team_name,rnk
order by team_name,amount desc
