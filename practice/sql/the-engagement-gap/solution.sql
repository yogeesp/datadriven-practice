SELECT
  view_date,
  inactive_views,
  suspended_views
FROM(SELECT CAST(viewed_at AS DATE) view_date,  
    SUM(CASE WHEN lower(account_status) = 'inactive'THEN 1 ELSE 0
    END) inactive_views,  
    SUM(CASE WHEN lower(account_status) = 'suspended' 
    THEN 1 ELSE 0 END) suspended_views 
    FROM users u INNER JOIN page_views p ON p.user_id = u.user_id
    group by view_date
    )
WHERE inactive_views > suspended_views
order by view_date
