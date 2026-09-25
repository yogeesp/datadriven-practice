SELECT status,ROUND(avg(latency),3) avg_latency
  from api_calls
group by status
