SELECT * from
(SELECT username,
count(transaction_id) txn_count,
dense_rank() over( order by count(transaction_id) desc) rnk
from users u
INNER JOIN transactions t
ON u.user_id = t.user_id
group by username)
where rnk <=5
order by username
