SELECT CONCAT(svc_name,':',version,' ','(','deploy ',
'#' ,log_id ,')') 
  full_identifier,
  dur_secs 
 from deploy_logs
where dur_secs = (SELECT MAX(dur_secs) from deploy_logs)
 
