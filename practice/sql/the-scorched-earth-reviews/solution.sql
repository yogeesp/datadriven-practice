df = products
.select('product_name','rating')
.filter(col('rating') == 1)
