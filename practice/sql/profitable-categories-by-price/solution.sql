select category,min(price),avg(rating)
from products 
where in_stock = 1
group by category
having avg(rating) >= 3.0
