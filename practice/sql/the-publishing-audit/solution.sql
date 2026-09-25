SELECT content_id,title,content_type,
duration_seconds,creator_id	,publish_date
from content_items where publish_date >='2026-01-01'
and publish_date <'2027-01-1'
