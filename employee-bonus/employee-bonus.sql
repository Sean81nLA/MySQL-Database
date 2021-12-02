select a.name, b.bonus
from Employee a left join bonus b
on a.empId=b.empid
where b.bonus is Null or b.bonus<1000
