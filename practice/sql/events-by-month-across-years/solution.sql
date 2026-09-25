SELECT
  EXTRACT(MONTH FROM CAST(event_timestamp AS DATE)) month,
  COUNT(*) AS event_count
FROM event_Data
group by month
