select model_id,mdl_name,accuracy
from ml_models
order by accuracy desc
limit 10
