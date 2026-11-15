SELECT region,count(*)
    from alert_events ae
    inner join svc_health sh
    on ae.svc_name = sh.svc_name
    where lower(severity) = 'critical'
    group by region
