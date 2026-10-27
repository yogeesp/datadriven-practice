select *
from users
where user_id%2 = 0
and to_char(signup_date,'MM') = '06'
