SELECT product_name, sum(total_amount) total_revenue
from products p
inner join transactions t
ON p.product_id = t.product_id
group by product_name
order by total_revenue desc
limit 5
