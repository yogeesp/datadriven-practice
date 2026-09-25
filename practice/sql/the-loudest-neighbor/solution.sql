select nspace,pod_name,mem_used
from 
(select nspace,pod_name,mem_used,
row_number() over(partition by nspace order by mem_used) rnk
from k8s_pods
where mem_used IS NOT NULL)
where rnk = 1
order by mem_used
