# Write your MySQL query statement below
select b.name, sum(a.amount)as 'balance'
from Transactions a join users b
on a.account=b.account
group by name
having sum(a.amount)>10000
