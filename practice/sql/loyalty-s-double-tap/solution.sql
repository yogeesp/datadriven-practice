select ad_campaign,count(distinct impression_id) impression_count
from ad_impressions a
inner join push_notifs p
on a.user_id = p.user_id
where lower(campaign) ILIKE '%loyalty%'
group by ad_campaign
order by impression_count desc
