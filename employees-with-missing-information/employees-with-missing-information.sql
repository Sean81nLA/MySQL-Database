select 
a.employee_id 
from Salaries a left join Employees b
on a.employee_id=b.employee_id
where b.name is null 
group by a.employee_id
union
select 
a.employee_id 
from Employees a left join Salaries b
on a.employee_id=b.employee_id
where b.salary is null 
group by a.employee_id
order by employee_id







