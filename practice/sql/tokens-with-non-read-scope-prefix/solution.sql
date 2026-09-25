SELECT count(distinct owner_id) non_read_owner_count
from api_tokens
where lower(scope) NOT LIKE 'read%';
