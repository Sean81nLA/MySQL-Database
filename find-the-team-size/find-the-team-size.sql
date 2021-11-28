with team AS(
Select team_id, count(employee_id) as 'team_size'
from employee
Group By team_id)
Select a.employee_id, b.team_size
from employee a left join team b
on a.team_id=b.team_id

