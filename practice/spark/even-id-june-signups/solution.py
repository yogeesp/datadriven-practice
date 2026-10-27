df = users
.filter(F.col('user_id')%2 == 0)
.filter(date_format('signup_date','MM')== "06")
