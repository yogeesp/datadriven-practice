select 
  event_type,
   SUM (case when EXTRACT(DOW FROM event_timestamp) IN (0,6) then 1 else 0 end) weekend_count,
  SUM (case when EXTRACT(DOW FROM event_timestamp) between 1 and 5 then 1 else 0 end) weekday_count
  from event_data
  group by event_type
  order by weekend_count desc
