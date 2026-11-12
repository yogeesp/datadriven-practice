with cte as
(SELECT
  repo_name,
  commit_at,
  lag(commit_at) OVER
  (PARTITION BY repo_name ORDER BY julianday(commit_at)) 
    prev,
 (julianday(commit_at) -julianday(lag(commit_at) 
  OVER(PARTITION BY repo_name ORDER BY julianday(commit_at))))
   silence 
  FROM repo_commits
)
  
 select repo_name,max(silence),rank() over(order by max(silence) desc)
 from cte
 where silence is not null
 group by repo_name
 having count(*) >31
