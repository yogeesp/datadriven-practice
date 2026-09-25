select extract(year from bill_date) fiscal_year,
round(sum(amount) ,3)total_spend,
count(distinct(svc_name)) service_count
 from cloud_costs
  group by fiscal_year
  
