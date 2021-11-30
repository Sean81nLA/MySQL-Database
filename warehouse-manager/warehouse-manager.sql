select a.name as "warehouse_name", sum(a.units*b.width*b.length*b.height) as "volume"
from products b
join warehouse a on a.product_id=b.product_id
group by name