select product_name,category,price,avg_price
from
(select product_name,category,price,
avg(price) over(partition by category) avg_price
from products
)
where price >avg_price
