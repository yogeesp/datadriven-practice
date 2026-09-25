select distinct(amount) from
(select  cost_id,amount,
dense_rank() over(order by amount desc) ranking
from cloud_costs)
where ranking = 3
