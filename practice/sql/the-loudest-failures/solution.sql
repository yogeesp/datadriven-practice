select err_type,count(*)
from err_tracks
where (extract (year from first_at::Date) = 2026)
group by err_type
order by count(*)
