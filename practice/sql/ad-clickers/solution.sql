Select u.username,sum(revenue) total_revenue
from ad_impressions a
INNER JOIN users u
ON u.user_id = a.user_id
where a.clicked = 1
group by u.username
order by sum(revenue) desc
