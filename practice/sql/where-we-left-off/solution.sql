SELECT   user_id,
  pages_viewed from
(SELECT 
  user_id,
  pages_viewed,
  rank() over(partition by user_id order by session_start desc) rnk
  from user_sessions)
  where rnk = 1
