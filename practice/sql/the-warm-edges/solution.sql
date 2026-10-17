SELECT
  edge_loc,
  req_path,
  avg(bytes)avg_bytes
FROM cdn_logs
where req_path ilike '%api%'
group by edge_loc,req_path
order by avg_bytes
