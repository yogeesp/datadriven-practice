SELECT
  endpoint,
  INSTR(LOWER(endpoint), 'a') AS a_position
FROM api_calls
WHERE INSTR(LOWER(endpoint), 'a') > 0
ORDER BY call_id
