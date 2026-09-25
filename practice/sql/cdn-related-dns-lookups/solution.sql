select *
from dns_lookups
where domain ILIKE '%cdn%'
order by domain
