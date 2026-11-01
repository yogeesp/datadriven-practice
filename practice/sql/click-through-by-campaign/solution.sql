SELECT
  ad_campaign,
  COUNT(*),
round(  100.0*SUM(
    CASE
      WHEN clicked = 1 THEN 1.00
      ELSE 0.0
    END
  ) / COUNT(*),2) AS clicked_pct,
round(100.0*    SUM(
    CASE
      WHEN clicked = 0 THEN 1.00
      ELSE 0.0
    END
  ) / COUNT(*),2) AS non_clicked_pct
    from ad_impressions
    group by ad_campaign
