SELECT tbl_name,AVG(fail_pct)
FROM dq_checks
GROUP BY tbl_name
HAVING COUNT(distinct (rule))> 1
