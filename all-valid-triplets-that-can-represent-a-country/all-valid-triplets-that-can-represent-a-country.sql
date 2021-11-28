select a.student_name as member_A,b.student_name as member_B,c.student_name as member_c
from SchoolA a, SchoolB b, SchoolC c
where b.student_id!=a.student_id and b.student_name!=a.student_name
and a.student_id!=c.student_id and c.student_name!=a.student_name
and b.student_id!=c.student_id and b.student_name!=c.student_name
