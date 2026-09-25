SELECT
  content_type,
  COUNT(*) AS item_count
FROM content_items
GROUP BY content_type
ORDER BY content_type
