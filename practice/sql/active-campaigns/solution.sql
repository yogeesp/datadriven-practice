SELECT 
  ad_campaign, 
  COUNT(*) AS impressions,
  SUM(revenue) AS total_revenue,  
  ROUND(
    100.0 * SUM(clicked) / NULLIF(COUNT(*), 0),
    1
  ) AS ctr
FROM ad_impressions
GROUP BY ad_campaign
ORDER BY ctr DESC, ad_campaign;
