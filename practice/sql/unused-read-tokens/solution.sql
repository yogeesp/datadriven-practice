SELECT 
token_id,owner_id,scope,status,issued,expires,last_used,requests
from api_tokens where last_used IS null
and lower(scope) like 'read' 
