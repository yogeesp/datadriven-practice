select 
  pipe_name,
  min(start_at)first_run,
  max(start_at)last_run,
  count(*)run_count
from data_pipes
group by pipe_name
