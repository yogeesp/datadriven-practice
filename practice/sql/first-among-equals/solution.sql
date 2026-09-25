select 
  product_name,
  count(transaction_id) as order_count
from products p
join transactions t
on p.product_id = t.product_id
group by product_name
order by product_name 
