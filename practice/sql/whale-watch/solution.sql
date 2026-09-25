SELECT
  user_id,
  sum(total_amount) total_spend,
  count(transaction_id) txn_count,
  round(avg(total_amount),2) avg_txn_size
from transactions
group by user_id
having total_spend > 500
order by total_spend desc
