SELECT
  product_name,
  category,
  price,
  case when in_stock = 1 then 'In Stock' else 'Out of Stock' 
  end as availability

from products
where price is not null
order by product_name
