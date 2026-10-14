SELECT
  username,
  min(transaction_date) first_purchase,
  max(transaction_date) latest_purchase,
  sum(total_amount)lifetime_spend
from users u
inner join transactions t
on u.user_id = t.user_id
group by username
order by username
