SELECT team_name,
AVG(amount)
FROM cost_allocs
GROUP BY team_name
ORDER BY 1
