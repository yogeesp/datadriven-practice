SELECT 
    department, 
    COUNT(*) AS headcount
FROM 
    employees
GROUP BY 
    department
ORDER BY 
    headcount DESC, 
    department ASC;
