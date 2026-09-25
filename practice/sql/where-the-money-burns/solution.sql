SELECT svc_name
FROM (select svc_name,AVG(amount) amount_av from cloud_costs
GROUP BY svc_name )
where amount_av > (SELECT avg(amount) from cloud_costs)
ORDER BY svc_name
