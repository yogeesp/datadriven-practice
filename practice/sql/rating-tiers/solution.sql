SELECT product_name,category,rating,
dense_rank() over(partition by category order by 
rating desc) rating_rank
from products
where rating is not null
