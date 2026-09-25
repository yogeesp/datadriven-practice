SELECT
    session_id,
    user_id,
    session_duration_sec
FROM user_sessions
WHERE session_start >= '2026-01-01'
  AND session_start < '2027-01-01'
    AND session_duration_sec < 100;
