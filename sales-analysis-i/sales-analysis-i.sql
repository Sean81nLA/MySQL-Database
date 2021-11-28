Select 
seller_id
from 
Sales
Group By seller_id
 having 
 sum(price)=
(select 
max(total_price)
from 
(select seller_id,
sum(price) as total_price
from Sales
Group by seller_id)a)
