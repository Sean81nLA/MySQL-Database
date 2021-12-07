With bonus AS(
select employee_id, salary, name from Employees where name not like 'm%' and mod(employee_id,2)<>0)
 select a.employee_id, ifnull(b.salary,0) as bonus
 from employees a left join bonus b
 on a.employee_id=b.employee_id