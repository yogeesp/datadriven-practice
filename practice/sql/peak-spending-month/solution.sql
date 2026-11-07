select TO_CHAR(bill_date::date,'YYYY-MM') billing_month,sum(amount)
from cloud_costs
group by TO_CHAR(bill_date::date,'YYYY-MM')
order by sum(amount) desc
limit 1
