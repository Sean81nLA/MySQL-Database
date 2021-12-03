select a.product_id,
round(sum(b.units*a.price)/sum(b.units),2) as average_price
From prices a join UnitsSold b
on a.product_id=b.product_id
where b.purchase_date between start_date and end_date
group by product_id

