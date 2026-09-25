select username,
count(distinct (product_id)) product_count,
sum(t.total_Amount) total_spend
from users u
inner join transactions t on
u.user_id = t.user_id
group by u.user_id
order by sum(t.total_Amount) desc
