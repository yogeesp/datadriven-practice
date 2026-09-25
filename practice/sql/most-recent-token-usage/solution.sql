select * from
(SELECT
  token_id,
  owner_id,
  scope,
  status,
  issued,
  expires,
  last_used,
  requests,
  row_number() over(partition by owner_id order by 
    last_used desc) rnk
from api_tokens)
where rnk = 1
