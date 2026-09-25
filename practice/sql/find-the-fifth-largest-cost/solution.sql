select cost_id,provider,svc_name,region,amount,acct_id,bill_date
from
(select
  cost_id,provider,svc_name,region,amount,acct_id,bill_date,
  dense_rank() over (order by amount desc) rnk
from cloud_costs)
where rnk = 5
