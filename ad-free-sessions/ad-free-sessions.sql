select session_id from playback where session_id not in (
select distinct(p.session_id)
from playback p
join ads a
on p.customer_id = a.customer_id and a.timestamp >= start_time and a.timestamp <= end_time)
