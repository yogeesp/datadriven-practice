select ad_campaign,
extract(month from impression_time::date) month,
count(distinct user_id) unique_users
from ad_impressions
group by ad_campaign,month
order by 1,month
