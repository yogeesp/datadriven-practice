SELECT count(distinct u.user_id) users_with_errors
  from users u
  inner join api_calls a
  ON u.user_id = a.user_id
  where status >=400
