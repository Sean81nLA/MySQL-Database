select employee_id, 
(case 
 When mod(employee_id,2) <> 0 and name not like 'm%' then salary
 Else salary IS NULL
 End) as bonus 
from employees 

