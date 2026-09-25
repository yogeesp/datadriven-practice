SELECT
  pipe_id,
  pipe_name,
  status,
  rows_in,
  rows_out, start_at,
  dur_secs,
  sum(rows_in) over (partition by status) status_total_rows_in
from data_pipes
