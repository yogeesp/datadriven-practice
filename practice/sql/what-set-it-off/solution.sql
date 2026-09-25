
SELECT trigger,
count(build_id) build_count,
Round(avg(dur_secs),3) avg_duration
from ci_builds
group by trigger
order by trigger
