select 
  account_status,
  count(*) user_count,
  round(100.00 *count(*)/
  (select count(user_id) from users),1) pct
  from users
  group by account_status
  order by user_count
