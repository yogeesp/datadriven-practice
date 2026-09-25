select 
    start_at::Date calendar_day
    from data_pipes
    where start_at::date < '2026-05-01'
    group by start_at::DAte
    having count(*) >=1
order by start_at
