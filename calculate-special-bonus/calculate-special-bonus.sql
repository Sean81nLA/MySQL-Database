select employee_id,
case when mod(employee_id,2)<>0 and name not like 'm%' Then salary Else 0 End as bonus
from Employees
