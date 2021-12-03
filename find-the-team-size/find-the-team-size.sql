with team_size AS
(select team_id, count(employee_id)as team_size
from Employee group by team_id
)
select a.employee_id,b.team_size
from Employee a join team_size b
on a.team_id=b.team_id


