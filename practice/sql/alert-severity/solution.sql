select * from
(SELECT
  topic,
"OFFSET", lag("OFFSET") OVER(PARTITION BY topic ORDER BY "OFFSET") prev_offset,
dense_rank() over (PARTITION BY topic ORDER BY "OFFSET") msg_rnk,
row_number() over (PARTITION BY topic ORDER BY "OFFSET") msg_row_num 
FROM stream_msgs
)
where prev_offset Is not null
