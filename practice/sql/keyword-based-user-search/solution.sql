SELECT DISTINCT
  user_id
FROM search_queries
WHERE (
  LOWER(search_term) LIKE '%desk%'
  OR LOWER(search_term) LIKE '%monitor%'
  OR LOWER(search_term) LIKE '%cable%'
  OR LOWER(search_term) LIKE '%mouse%'
)
AND LOWER(search_term) NOT LIKE '%desks%'
AND LOWER(search_term) NOT LIKE '%monitors%'
AND LOWER(search_term) NOT LIKE '%cables%'
AND LOWER(search_term) NOT LIKE '%mouses%'
