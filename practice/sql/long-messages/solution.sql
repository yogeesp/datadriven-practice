select
author,message,len(message) message_length
from repo_commits
where message_length > 10
