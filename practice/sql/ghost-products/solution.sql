select product_name
from products p
left join transactions t
on p.product_id = t.product_id
where t.product_id IS NULL
