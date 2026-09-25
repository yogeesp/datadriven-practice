SELECT
  job_date	,job_name	,rows_done
FROM (
  SELECT
    CAST(started AS DATE) AS job_date,
    job_name,rows_done,
    RANK() OVER (
      PARTITION BY CAST(started AS DATE)
      ORDER BY rows_done DESC
    ) AS rnk
  FROM batch_jobs
  where rows_done IS NOT NULL
  --GROUP BY job_date
)
WHERE rnk = 1
order by job_date
