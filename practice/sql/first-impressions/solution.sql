SELECT product_id,
substring(product_name,1,3) name_prefix
from products group by product_id
order by product_id
