SELECT  *
FROM migrations
WHERE migr_id = (select min(migr_id) from migrations)
