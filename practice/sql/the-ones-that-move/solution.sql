SELECT
  category,
  product_name,
  revenue,
  revenue_rank
FROM (
  SELECT
    category,
    product_name,
    sum(quantity * unit_price) AS revenue,
    ROW_NUMBER() OVER (
      PARTITION BY category
      ORDER BY sum(quantity * unit_price) DESC
    ) AS revenue_rank
  FROM products AS p
  INNER JOIN order_items AS o
  on p.product_id = o.product_id
  group by category,product_name
)
  where revenue_rank <=3
order by category,revenue_rank,product_name
