select b.unique_id, a.name
from employees a left join EmployeeUNI b
on a.id=b.id