select p.person_id as id, extract("year" from vo.visit_start_date), count(*)
from synpuf5.person p 
left join synpuf5.visit_occurrence vo 
on p.person_id = vo.person_id 
group by (p.person_id, extract("year" from vo.visit_start_date)) ;

select p.person_id as id, extract("year" from vo.visit_start_date) as year
from synpuf5.person p 
left join synpuf5.visit_occurrence vo 
on p.person_id = vo.person_id 
order by p.person_id, extract("year" from vo.visit_start_date);

select b.id, array_to_string(array_agg(b.year),',') 
from(select p.person_id as id, extract("year" from vo.visit_start_date) as year
from synpuf5.person p 
left join synpuf5.visit_occurrence vo 
on p.person_id = vo.person_id 
order by p.person_id, extract("year" from vo.visit_start_date)) as b
group by b.id;


select a.person_id, ARRAY_TO_STRING(ARRAY_AGG(c.concept_name),',')
from (select p.person_id, o.observation_concept_id 
from person p
left join observation o 
on p.person_id = o.person_id
order by p.person_id) as a
left join concept c 
on a.observation_concept_id = c.concept_id
group by a.person_id


