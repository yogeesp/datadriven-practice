select log_level,count(*)
from server_logs
group by log_level
order by log_level
