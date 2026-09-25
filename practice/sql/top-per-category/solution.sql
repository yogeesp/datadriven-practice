select product_name,category,rating
from 
(select product_name,category,rating,
rank() over(partition by category order by 
rating desc)ranking
from products)
where ranking = 1
