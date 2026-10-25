SELECT user_id,username,email,token_id,scope
from users u 
inner join api_tokens a on 
u.user_id =a.owner_id
where scope like'%admin%'
order by user_id,token_id
