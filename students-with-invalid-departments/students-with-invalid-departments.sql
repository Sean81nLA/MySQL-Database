select a.id,a.name
from students a  left join Departments b
on a.department_id=b.id
where b.id is null