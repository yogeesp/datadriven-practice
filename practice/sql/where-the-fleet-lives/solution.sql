SELECT
  region,
  COUNT(*) AS node_count
FROM infra_nodes
WHERE region IN (
  'us-east-1',
  'us-west-2',
  'eu-west-1',
  'eu-central-1',
  'ap-southeast-1',
  'ap-northeast-1'
  )
GROUP BY region
ORDER BY node_count DESC, region
