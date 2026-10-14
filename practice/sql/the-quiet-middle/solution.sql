select job_name,rnk
from
(
SELECT
  job_name,
  dense_RANK() OVER (ORDER BY rows_done desc) rnk
FROM batch_jobs
)
where rnk between 8 and 10
order by rnk
