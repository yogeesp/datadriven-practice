select job_name,priority,rows_done
from batch_jobs
where rows_done > 5000
order by rows_done desc
