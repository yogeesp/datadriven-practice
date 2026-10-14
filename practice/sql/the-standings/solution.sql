select category,sum(total_amount)revenue,sum(quantity),
rank() over (order by sum(quantity) desc) rnk
FROM
   transactions t
inner join products p
on t.product_id = p.product_id
group by category
