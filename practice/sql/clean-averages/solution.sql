select category,round(avg(rating),1) avg_rating
from products
where rating is not null
group by category
having count(*) >=3
order by avg_rating desc ,category
