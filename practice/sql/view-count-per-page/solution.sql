
select page_url,count(*)
from page_views 
group by page_url
order by count(*) desc
