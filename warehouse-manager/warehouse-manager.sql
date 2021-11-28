select a.name as warehouse_name,  sum(a.units*width*length*height) as volume
from Products b join Warehouse a on a.product_id=b.product_id
group by a.name

