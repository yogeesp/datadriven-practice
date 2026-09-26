SELECT svc_name, COUNT(*) AS deployment_count
  FROM deploy_logs
  GROUP BY svc_name
ORDER BY deployment_count DESC, svc_name ASC;
