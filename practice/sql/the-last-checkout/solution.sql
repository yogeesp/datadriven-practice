select transaction_date,user_id,count(product_id)
from
(
SELECT
  user_id,
  transaction_date,
  MAX(transaction_date) OVER (
    PARTITION BY user_id
  ) AS latest_date,
  product_id
FROM transactions
)
where transaction_date = latest_date
group by user_id
order by 1
