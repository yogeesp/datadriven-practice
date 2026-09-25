SELECT count(distinct(owner_id)) distinct_owners
from api_tokens
where to_date(issued) between '2026-01-01' AND '2026-12-31';  
