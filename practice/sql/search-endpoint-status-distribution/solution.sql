select status,count(*)
from api_calls
where endpoint = '/api/v1/search'
group by status
order by status
