select concat(first_name,' ',last_name) full_name,
customer_id,country
from customers
order by full_name
