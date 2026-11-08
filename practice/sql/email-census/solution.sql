select account_status,
(case when email is NULL then 'no email'
when email is not null then 'has email'
end )email_Status,
count(*) user_count,
(100.00* count(*)/(select count(*) from users))
from users
group by account_status,email_Status
