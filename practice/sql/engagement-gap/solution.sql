select 
username,
coalesce (count(transaction_id),0)transaction_count
from users u
left join transactions t
ON u.user_id = t.user_id
group by username
