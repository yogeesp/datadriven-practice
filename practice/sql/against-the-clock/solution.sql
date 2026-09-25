SELECT
  job_id,
  job_name,
  (
    CAST(ended AS INT) - CAST(started AS INT)
  ) / 60 minutes_elapsed
  from batch_jobs
  where ended is not null
  and ended > started
