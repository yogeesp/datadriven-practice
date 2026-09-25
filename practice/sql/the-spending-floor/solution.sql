SELECT
  user_id,
  username,
  total_amount
FROM(select u.user_id,  username,  total_amount,  
  row_number() OVER(PARTITION BY u.user_id ORDER BY total_amount) rnk 
  FROM users u 
  INNER JOIN transactions t ON u.user_id = t.user_id)
WHERE rnk = 1
