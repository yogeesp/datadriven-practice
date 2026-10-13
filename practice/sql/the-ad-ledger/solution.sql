SELECT sum(revenue) total_revenue
from ad_impressions
where impression_time::date between '2024-04-01' and 
'2024-07-01'
