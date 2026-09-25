select lower(author)author,count(distinct(repo_name)) repo_count
from repo_commits
group by lower(author)
having repo_count >1
