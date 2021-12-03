select product_id,
sum(case when store="store1" Then price End) as store1,
sum(case when store="store2" Then price End) as store2,
sum(case when store="store3" Then price End)as store3
from Products
group by product_id
                  
