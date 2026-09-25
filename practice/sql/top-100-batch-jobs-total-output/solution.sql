select sum(rows_done) total_rows from
(select
    job_id,
    rows_done,
    dense_rank() over(order by rows_done desc) rnk
    from batch_jobs
)    
where rnk <=100
