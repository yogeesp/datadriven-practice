SELECT
  *
FROM ml_models
WHERE accuracy >= 0.9
ORDER BY accuracy DESC, model_id
