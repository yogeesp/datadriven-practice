SELECT
  token_id,
  requests
FROM (
  SELECT
    token_id,
    requests,
    RANK() OVER (ORDER BY requests DESC) AS rnk
  FROM api_tokens
  WHERE last_used IS NOT NULL
)
WHERE rnk = 1

UNION ALL

SELECT
  token_id,
  requests
FROM (
  SELECT
    token_id,
    requests,
    RANK() OVER (ORDER BY requests) AS rnk
  FROM api_tokens
  WHERE last_used IS NOT NULL
)
WHERE rnk = 1

UNION ALL
    
  SELECT
    token_id,
    requests
  FROM api_tokens
  WHERE scope= 'admin' and last_used IS NULL
