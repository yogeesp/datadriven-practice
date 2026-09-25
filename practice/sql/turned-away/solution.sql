SELECT DISTINCT(client)
FROM rate_limits WHERE CAST(blocked AS INTEGER) >0;
