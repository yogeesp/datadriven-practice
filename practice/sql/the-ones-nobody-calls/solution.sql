select endpoint,call_count,rnk

from
(select endpoint,count(*) call_count,
dense_rank () over(order by count(*)) rnk
from api_calls
where lower(method) = 'post'
group by endpoint
)
where rnk<=3
