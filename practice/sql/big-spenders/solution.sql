select user_id,sum(total_amount) lifetime_spend,count(*)
from transactions
group by user_id
having sum(total_amount) > 500
order by sum(total_amount) desc
