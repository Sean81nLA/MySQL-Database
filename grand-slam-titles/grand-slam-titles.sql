with cte as 
(
select year, Wimbledon as player_id
    from Championships
    union all
select year, Fr_open as player_id
    from Championships
    union all
select year, US_open as player_id
    from Championships
    union all
select year, Au_open as player_id
    from Championships  
)

select Players.player_id ,player_name, count(*) as grand_slams_count
from cte
JOIN Players ON cte.player_id = Players.player_id
group by 1,2
