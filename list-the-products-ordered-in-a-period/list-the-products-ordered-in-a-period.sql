Select a.product_name,
sum(b.unit) as "unit"
from Products a Join Orders b on a.product_id=b.product_id
where b.order_date between '2020-02-01' and '2020-02-29'
group by a.product_name
Having sum(unit)>='100'