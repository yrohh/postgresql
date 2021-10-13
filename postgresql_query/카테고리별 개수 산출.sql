--카테고리별 개수 산출.
select c.domain_id, o.observation_concept_id, c.concept_class_id, c.concept_name, count(*) 
from observation o 
left join concept c 
on o.observation_concept_id = c.concept_id
where (c.domain_id = 'Observation' or c.domain_id = 'Condition') and c.concept_id in
(
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%smoke%' or 
c.concept_name like '%smoking%' or
c.concept_name like '%smoker%' or
c.concept_name like '%tobacco%' or
c.concept_name like '%cigarette%' or
c.concept_name like '%snuff%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation')
)
group by c.domain_id, o.observation_concept_id, c.concept_class_id, c.concept_name;



--확인용 쿼리.
select c.domain_id, c.concept_name 
from observation o 
left join concept c
on o.observation_concept_id = c.concept_id 
where c.concept_name like '%smoke%';



-- 카테고리별 개수 산출 with 분당 서울대병원 키워드.
select c.domain_id, o.observation_concept_id, c.concept_class_id, c.concept_name, count(*) 
from observation o 
left join concept c 
on o.observation_concept_id = c.concept_id
where (c.domain_id = 'Observation' or c.domain_id = 'Condition') and c.concept_id in
(229819007,229819007,266919005,8517006,266918002,228487000,782516008,390902009,405746006,77176002)
group by c.domain_id, o.observation_concept_id, c.concept_class_id, c.concept_name;


--확인용 쿼리.
select c.domain_id, c.concept_name 
from observation o 
left join concept c
on o.observation_concept_id = c.concept_id 
where c.concept_id = 266918002;
