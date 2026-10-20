SELECT
  token_id,
  scope,
  requests,
  pct_rnk
FROM (
  SELECT
    token_id,
    scope,
    requests,
    ROUND(PERCENT_RANK() OVER (partition by scope
      ORDER BY requests
    ),2) AS pct_rnk
  FROM api_tokens
)
where pct_rnk >= 0.95
