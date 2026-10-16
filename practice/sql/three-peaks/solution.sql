select distinct team_name,monthly_cost
from
(SELECT
  lower(team_name) team_name,
  SUM(amount) AS monthly_cost,
  RANK() OVER (
    PARTITION BY lower(team_name)
    ORDER BY SUM(amount) DESC
  ) AS rnk
FROM cost_allocs
GROUP BY lower(team_name), period)
where rnk <= 3
