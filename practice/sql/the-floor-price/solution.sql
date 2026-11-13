select upper(provider),max(amount)
from cloud_costs
where acct_id is not null
group by 1
