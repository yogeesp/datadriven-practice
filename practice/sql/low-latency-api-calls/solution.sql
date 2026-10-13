SELECT * from api_calls
where latency <= 100.00
order by latency,call_id
