select distinct e1.user_id , e2.user_id
from experiments e1
inner join  experiments e2
 on   e1.exp_name = e2.exp_name
   and  e1.variant != e2.variant 
 and e1.user_id < e2.user_id
and e1.platform = e2.platform
