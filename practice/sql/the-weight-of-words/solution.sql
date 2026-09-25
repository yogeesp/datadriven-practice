SELECT
  lower(author),
  round(AVG(length(message)),2) avg_msg_len,
  COUNT(commit_id) commit_count,
  round(avg(added),2) avg_lines_added
from repo_commits
where trim(message) != '' and message IS not null
group by lower(author)
having COUNT(commit_id) > 2
order by avg_msg_len desc,author
