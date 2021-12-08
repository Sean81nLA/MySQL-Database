WITH cte AS(
SELECT 
         machine_id,
        process_id,
         SUM(CASE WHEN activity_type = 'start' then -timestamp else timestamp end) as time
FROM activity group by 1,2
)
SELECT 
         machine_id, ROUND(AVG(time),3) as processing_time from cte group BY 1