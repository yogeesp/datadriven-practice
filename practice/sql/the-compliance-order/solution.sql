select token_id,scope
from api_tokens
order by substring(scope,2,1)
