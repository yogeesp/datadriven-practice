select  department,emp_name,salary
from
(SELECT
  department,
  emp_name,
  salary,
  dense_rank() over(partition by department order by salary desc) rnk
from employees
)
where rnk = 3
