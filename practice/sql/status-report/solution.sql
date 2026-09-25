select status, count(order_id) order_count,
avg(profit) avg_profit
from orders
where status is not null
group by status
having count(status) >= 5
order by order_count desc
