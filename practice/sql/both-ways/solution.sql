select transaction_date,sum(total_amount)
from transactions
where transaction_date::date >= '2026-01-01' and 
transaction_date::date <'2026-05-01'
group by transaction_date
