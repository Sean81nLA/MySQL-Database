select a.name, ifnull(sum(b.distance),0) as 'travelled_distance'
from Users a left join Rides b
on a.id=b.user_id
group by a.id
order by sum(b.distance) desc, a.name



