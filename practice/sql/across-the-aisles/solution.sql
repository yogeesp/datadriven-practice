select user_id,count(distinct category) counti
from transactions t

inner join products p

on t.product_id = p.product_id
where total_amount <500
group by user_id
having count(distinct category) > 1
order by counti desc
