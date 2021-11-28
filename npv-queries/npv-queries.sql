select a.id, a.year,ifnull(b.npv,0) as npv
from queries a left join NPV b on a.id=b.id and a.year=b.year
order by a.id