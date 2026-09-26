SELECT 
  err_type, 
  CASE 
    WHEN "count" = 0 THEN 'NONE'
    WHEN "count" BETWEEN 1 AND 5 THEN 'LOW'
    WHEN "count" BETWEEN 6 AND 20 THEN 'MODERATE'
    WHEN "count" BETWEEN 21 AND 50 THEN 'HIGH'
    ELSE 'CRITICAL'
  END AS severity_label
FROM 
  err_tracks
WHERE 
 "count" IS NOT NULL
