select a.person_id, ARRAY_TO_STRING(ARRAY_AGG(c.concept_name),',')
from (select p.person_id, o.observation_concept_id 
from person p
left join observation o 
on p.person_id = o.person_id
order by p.person_id) as a
left join concept c 
on a.observation_concept_id = c.concept_id
group by a.person_id;