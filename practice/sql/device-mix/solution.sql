SELECT
  device_type,
  os_name,
  COUNT(*) AS device_count
FROM devices
group by device_type,os_name
having count (*) >=3
order by device_count desc
