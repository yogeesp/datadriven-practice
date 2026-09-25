SELECT
  *
FROM migrations
WHERE LOWER(status) = 'applied'
AND (migr_id) = (
  SELECT
    (MAX((migr_id)))
  FROM migrations
)
LIMIT 1 
