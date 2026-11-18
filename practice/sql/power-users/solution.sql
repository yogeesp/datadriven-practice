select username,count(*)
from users u
inner join user_sessions us
on u.user_id = us.user_id
group by 1
having count(*) >= 3
order by count(*) desc
