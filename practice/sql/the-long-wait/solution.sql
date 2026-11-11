select endpoint,avg(latency)
from api_calls
group by endpoint
order by 2 desc
