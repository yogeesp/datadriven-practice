SELECT
  concat(team_name, ' - ',svc_name) label,
  amount,
  region
from cost_allocs
where amount between 500 and 1000
