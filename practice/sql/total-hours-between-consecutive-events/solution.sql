select event_type, sum(diff) total_hours
from 
(SELECT
  event_type,
  event_timestamp,
  LAG(
    CAST(event_timestamp AS TIMESTAMP),1) OVER w 
    AS previous_timestamp,
    EXTRACT(EPOCH FROM ((CAST(
      event_timestamp AS TIMESTAMP)) - LAG(
      CAST(event_timestamp AS TIMESTAMP),
      1) OVER w)) / 3600
   AS diff 
FROM event_data
WHERE event_timestamp IS NOT NULL
WINDOW w AS (
  PARTITION BY event_type
  ORDER BY CAST(event_timestamp AS TIMESTAMP)
))
group by event_type;
