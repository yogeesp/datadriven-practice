SELECT
  svc_name,
  bill_date,
  amount,
  amount - LAG(amount, 1) OVER (
    PARTITION BY svc_name
    ORDER BY bill_date
  ) price_change
FROM cloud_costs
