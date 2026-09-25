select 
category,
round(sum(t.quantity * p.price),3) total_revenue
from
  transactions t
inner join products p
on t.product_id = p.product_id
group by category
