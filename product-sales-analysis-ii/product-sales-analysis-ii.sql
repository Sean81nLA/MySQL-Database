select a.product_id,
sum(quantity) as total_quantity
from sales a left join product b on a.product_id=b.product_id
group by a.product_id
