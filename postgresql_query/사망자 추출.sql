select p.person_id, case d.death_date when null then 1 else 0
from person p
left join death d 
on p.person_id = d.person_id 
order by p.person_id 