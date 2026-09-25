SELECT p.product_name,
coalesce(SUM(
      CASE
        WHEN lower(p.category) = 'electronics' THEN t.total_amount
      END
      ),0) electronics_total
from products p
LEFT JOIN transactions t
ON p.product_id = t.product_id
group by product_name
order by electronics_total desc
