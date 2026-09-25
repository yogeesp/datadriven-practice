SELECT
  user_id,
  round(SUM(total_amount),3) AS total_revenue
FROM transactions
where to_char(transaction_date,'YYYY-MM') = '2026-03'
group by user_id
order by total_revenue desc
