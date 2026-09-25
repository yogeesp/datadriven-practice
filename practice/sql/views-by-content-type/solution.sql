SELECT
  ci.content_type,
  COUNT(*) AS view_count
FROM content_views AS cv
INNER JOIN content_items AS ci
  ON cv.content_id = ci.content_id
GROUP BY ci.content_type
