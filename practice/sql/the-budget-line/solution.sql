SELECT
  cc.svc_name,
  cc.region,
  cc.amount AS actual_cost,
  ca.amount AS budget,
  CASE
    WHEN cc.amount > ca.amount THEN 'over'
    WHEN cc.amount < ca.amount THEN 'under'
    ELSE 'on_target'
  END AS budget_flag
FROM cloud_costs AS cc
INNER JOIN cost_allocs AS ca
  ON cc.svc_name = ca.svc_name
  AND cc.region = ca.region
