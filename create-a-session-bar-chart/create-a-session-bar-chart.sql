With bin as (select '[0-5>' as bin 
            union 
            select '[5-10>' as bin 
            union 
            select '[10-15>' as bin 
            union 
            select '15 or more' as bin),
    s1 as (select case when duration/60 < 5 then '[0-5>' 
            when duration/60 < 10 then '[5-10>'
            when duration/60 < 15 then '[10-15>'
            else '15 or more' end as bin, count(session_id) as total
            from sessions
            group by bin)
            
select bin.bin as BIN, ifnull(total,0) as TOTAL
from bin
left join s1
on bin.bin = s1.bin