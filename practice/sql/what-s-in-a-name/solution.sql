select lower(SUBSTRING(trim(username),1,1)) initial,count(*),
(100.0 * count(*)/(select count(*) from users)) pct
from users
group by lower(SUBSTRING(trim(username),1,1))
order by pct desc
