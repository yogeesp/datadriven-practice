SELECT
  transaction_id,
  username,
  total_amount,
  SUM(total_amount) OVER (

    ORDER BY transaction_id
    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
  ) running_total
  from users u
  inner join transactions t
  on u.user_id = t.user_id
  where username = 'alice' or username = 'aaron42'
  order by transaction_id
