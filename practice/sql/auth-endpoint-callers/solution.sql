SELECT
  a.user_id,
  username,
  email,
  call_id,
  endpoint
from api_calls a
    inner join users u
    on a.user_id = u.user_id
    where endpoint like '%auth%'
order by a.user_id,call_id
