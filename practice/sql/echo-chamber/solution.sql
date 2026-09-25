SELECT a.call_id as call_id_1,
b.call_id as call_id_2, a.method,a.status
from api_calls a 
JOIN api_calls b
ON a.method = b.method
AND a.status = b.status
and a.call_id < b.call_id
order by a.status DESC
limit 20;
