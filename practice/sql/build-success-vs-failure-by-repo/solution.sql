select repo_name,
sum(case when status = 'success' then 1 else 0 end) success_count,
sum(case when status = 'failure' then 1 else 0 end) failure_count,
round(avg(dur_secs),3) avg_duration
from ci_builds
group by repo_name
