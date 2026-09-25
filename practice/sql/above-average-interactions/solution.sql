WITH user_counts AS (
    SELECT user_id, COUNT(*) AS total_sessions
    FROM user_sessions
    GROUP BY user_id
)
SELECT user_id, total_sessions
FROM user_counts
WHERE total_sessions > (
    SELECT AVG(total_sessions) FROM user_counts
);
