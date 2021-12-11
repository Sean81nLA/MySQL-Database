select employee_id,
ifnull(sum(case when primary_flag='Y' then department_id
         else null end),department_id) as department_id
from Employee
group by employee_id