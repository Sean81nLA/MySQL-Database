Select b.unique_id, a.name
from Employees a left join EmployeeUNI b
on a.id=b.id