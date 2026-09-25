SELECT 
    user_id,
    sum(pages_viewed) total_pages
    from user_sessions
    group by user_id
    order by total_pages desc
    limit 5
