SELECT
  region,
  MIN(amount) AS min_cost
FROM cloud_costs
GROUP BY region
