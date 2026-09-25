SELECT 
    category, 
    AVG(price) AS average_price, 
    COUNT(price) AS total_products
FROM 
    products
WHERE 
    price IS NOT NULL
GROUP BY 
    category
ORDER BY 
    average_price DESC
