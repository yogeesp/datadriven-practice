with ranked as (select job_name,rows_done,
rank() over(partition by job_name order by started) rnk
from batch_jobs)

select job_name,rows_done
from ranked
where rnk = 1
