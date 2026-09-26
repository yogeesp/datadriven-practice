select reviewer,count(*)
from code_reviews
group by reviewer
