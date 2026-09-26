SELECT
  region,
  COUNT(DISTINCT svc_name) AS service_count
FROM
  cloud_costs
WHERE
  UPPER(provider) = 'AWS'
   AND
  amount >= 200
GROUP BY
  region
ORDER BY
  service_count DESC,region
