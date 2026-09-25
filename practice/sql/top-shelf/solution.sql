SELECT
  category,
  price AS max_price
FROM (
  SELECT
    category,
    product_name,
    price,
    ROW_NUMBER() OVER (
      PARTITION BY category
      ORDER BY price DESC
    ) AS rn
  FROM products
  WHERE price IS NOT NULL
) AS ranked
WHERE rn = 1
ORDER BY max_price DESC
LIMIT 3
