WITH txns AS (
  SELECT
    TO_CHAR(transaction_date, 'YYYY-MM') AS month,
    SUM(total_amount) AS revenue
  FROM transactions
  GROUP BY month
),
prev_report AS (
  SELECT
    month,
    revenue,
    LAG(revenue, 1) OVER (
      ORDER BY month
    ) AS prev_month_revenue
  FROM txns
)

SELECT
  month,
  revenue,
  ROUND(
    100 * (
      revenue - prev_month_revenue
    ) / prev_month_revenue,
    2
    ) AS pct_change
FROM prev_report
