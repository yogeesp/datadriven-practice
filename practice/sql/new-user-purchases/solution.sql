select sum(t.total_amount) total_revenue 
from transactions t
LEFT JOIN users u
ON t.user_id = u.user_id
where EXTRACT(year from (signup_date::date)) = 2026
