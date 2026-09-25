select category,avg(price) avg_price
from products
group by category order by avg_price
limit 1
