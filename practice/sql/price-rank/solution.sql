SELECT
    product_name,category,price,
    dense_rank() over(partition by category order by price desc)
    postition 
    from products
    where price IS NOT NULL
