WITH year_signup AS (
  SELECT strftime('%Y', signup_date)
  AS signup_year, COUNT(DISTINCT user_id) AS signups
  FROM users
  GROUP BY signup_year
)
SELECT 
  signup_year,
  signups,
  LAG(signups) OVER (ORDER BY signup_year) AS prev_year_signups,
  round(100.00*(signups - LAG(signups) OVER (ORDER BY signup_year)) 
/ LAG(signups) OVER (ORDER BY signup_year),0)  AS yoy_growth_pct
FROM year_signup
ORDER BY signup_year;
