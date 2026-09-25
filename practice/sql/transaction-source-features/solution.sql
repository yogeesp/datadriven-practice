SELECT DISTINCT
  feat_name
FROM ml_features
WHERE source = 'transactions'
AND avg_val IS NOT NULL
ORDER BY feat_name
