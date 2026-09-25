SELECT
  entry_id,
  kv_key,
  kv_value,
  ttl_secs,
  region,
  created,
  expires
FROM kv_store
WHERE region = 'us-east-1'
