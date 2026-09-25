select distinct user_id from
(SELECT
  user_id,
  EXTRACT(MONTH FROM CAST(
    transaction_date
    AS DATE
    )) AS monthi,
  EXTRACT(YEAR FROM CAST(
    transaction_date
    AS DATE
    )) AS yeari,
  (
    CASE
      WHEN EXTRACT(MONTH FROM CAST(transaction_date AS DATE)) BETWEEN 1
      AND 6 THEN '1st half'
      WHEN EXTRACT(MONTH FROM CAST(transaction_date AS DATE)) BETWEEN 7
      AND 12 THEN '2nd half'
      ELSE 'NA'
    END
  ) AS half
FROM transactions
WHERE EXTRACT(YEAR FROM CAST(
  transaction_date
  AS DATE
  )) = 2026
GROUP BY user_id,half)
--having count(distinct half) =2)
order by user_id
