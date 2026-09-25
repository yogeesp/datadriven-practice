select count (distinct mdl_name)
from ml_models
where status = 'training'
