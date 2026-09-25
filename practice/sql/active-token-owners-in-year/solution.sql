SELECT (COUNT(DISTINCT owner_id)) as distinct_owners
FROM api_tokens
WHERE issued::DATE BETWEEN '2026-01-01' AND '2026-12-31';
