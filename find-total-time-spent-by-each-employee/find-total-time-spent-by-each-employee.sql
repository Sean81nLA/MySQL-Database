Select event_day as day, emp_id, sum(out_time-in_time)as total_time
From Employees
Group By emp_id, event_day

