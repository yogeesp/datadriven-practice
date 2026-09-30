SELECT
  content_type,
  AVG(
    watch_seconds *1.0 / duration_seconds
    ) AS completion_rate,
  COUNT(view_id)
FROM content_views AS v
INNER JOIN content_items AS i
  ON v.content_id = i.content_id
WHERE LEFT(viewed_at, 4) = '2026'
AND duration_seconds IS NOT NULL
AND duration_seconds > 0
GROUP BY content_type
ORDER BY completion_rate DESC
