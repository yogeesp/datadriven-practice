select err_type
from err_tracks
where svc_name = 'payment-api'
group by err_type
having count(*) >6
