SELECT
  *
from alert_events
where ack_by !='alice' or ack_by Is null
order by fired_at
