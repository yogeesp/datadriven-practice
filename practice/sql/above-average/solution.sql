select product_name,category,price,
(select avg(price) from products) as catalog_avg
from products
where price > (select avg(price) from products)
order by price desc
