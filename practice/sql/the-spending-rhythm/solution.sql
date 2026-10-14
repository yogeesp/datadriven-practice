select user_id,
to_char(to_date(transaction_date),'YYYY-MM') month,
count(*)
from transactions
group by user_id,month
order by user_id,month
