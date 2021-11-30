With team AS(
select team_id, count(employee_id) as'team_size'
from employee
group by team_id)
Select a.employee_id, b.team_size
from employee a join team b
on a.team_id=b.team_id