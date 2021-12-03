select 
problem_id
from Problems
where likes/(likes+dislikes)<0.6
Order by problem_ID ASC
