SELECT AVG(acc) AS avg_accuracy
FROM (
  SELECT accuracy AS acc
  FROM ml_models
  WHERE accuracy BETWEEN 0.91 AND 1.00
) AS subquery
