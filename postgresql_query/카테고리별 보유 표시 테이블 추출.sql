-- 흡연 관련 키워드 보유 여부 테이블 추출_observation 테이블 바탕.
select distinct (tp2.person_id), case when tp2.흡연 >= 1 then 1 else 0 end 흡연
from(
select tp.person_id, sum(흡연) as 흡연
from(select distinct (o.person_id), case when o.observation_concept_id in (
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%smoke%' or 
c.concept_name like '%smoking%' or
c.concept_name like '%smoker%' or
c.concept_name like '%tobacco%' or
c.concept_name like '%cigarette%' or
c.concept_name like '%snuff%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation')
) then 1 else 0 end 흡연
from public.observation o
order by o.person_id) as tp
group by tp.person_id) as tp2;


-- 음주 관련 키워드 보유 여부 테이블 추출_observation 테이블 바탕.
select distinct (tp2.person_id), case when tp2.음주 >= 1 then 1 else 0 end 음주
from(
select tp.person_id, sum(음주) as 음주
from(select distinct (o.person_id), case when o.observation_concept_id in (
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%drinking%' or 
c.concept_name like '%alcohol abuse%' or
c.concept_name like '%alcohol dependence%' or
c.concept_name like '%drinker%' or
c.concept_name like '%alcholism%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation')
) then 1 else 0 end 음주
from public.observation o
order by o.person_id) as tp
group by tp.person_id) as tp2;


-- 고혈압 관련 키워드 보유 여부 테이블 추출_observation 테이블 바탕.
select distinct (tp2.person_id), case when tp2.고혈압 >= 1 then 1 else 0 end 고혈압
from(
select tp.person_id, sum(고혈압) as 고혈압
from(select distinct (o.person_id), case when o.observation_concept_id in (
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%hypertension%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation')
) then 1 else 0 end 고혈압
from public.observation o
order by o.person_id) as tp
group by tp.person_id) as tp2;


-- 이상지질혈증 관련 키워드 보유 여부 테이블 추출_observation 테이블 바탕.
select distinct (tp2.person_id), case when tp2.이상지질혈증 >= 1 then 1 else 0 end 이상지질혈증
from(
select tp.person_id, sum(이상지질혈증) as 이상지질혈증
from(select distinct (o.person_id), case when o.observation_concept_id in (
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%dyslipidemia%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation')
) then 1 else 0 end 이상지질혈증
from public.observation o
order by o.person_id) as tp
group by tp.person_id) as tp2;


-- 당뇨병 관련 키워드 보유 여부 테이블 추출_observation 테이블 바탕.
select distinct (tp2.person_id), case when tp2.당뇨병 >= 1 then 1 else 0 end 당뇨병
from(
select tp.person_id, sum(당뇨병) as 당뇨병
from(select distinct (o.person_id), case when o.observation_concept_id in (
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%diabetes mellitus%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation')
) then 1 else 0 end 당뇨병
from public.observation o
order by o.person_id) as tp
group by tp.person_id) as tp2;


-- 만성신장질환 관련 키워드 보유 여부 테이블 추출_observation 테이블 바탕.
select distinct (tp2.person_id), case when tp2.만성신장질환 >= 1 then 1 else 0 end 만성신장질환
from(
select tp.person_id, sum(만성신장질환) as 만성신장질환
from(select distinct (o.person_id), case when o.observation_concept_id in (
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%Chronic kidney disease%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation')
) then 1 else 0 end 만성신장질환
from public.observation o
order by o.person_id) as tp
group by tp.person_id) as tp2;


-- 뇌졸증 관련 키워드 보유 여부 테이블 추출_observation 테이블 바탕.
select distinct (tp2.person_id), case when tp2.뇌졸증 >= 1 then 1 else 0 end 뇌졸증
from(
select tp.person_id, sum(뇌졸증) as 뇌졸증
from(select distinct (o.person_id), case when o.observation_concept_id in (
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%stroke%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation')
) then 1 else 0 end 뇌졸증
from public.observation o
order by o.person_id) as tp
group by tp.person_id) as tp2;


-- 결핵 관련 키워드 보유 여부 테이블 추출_observation 테이블 바탕.
select distinct (tp2.person_id), case when tp2.결핵 >= 1 then 1 else 0 end 결핵
from(
select tp.person_id, sum(결핵) as 결핵
from(select distinct (o.person_id), case when o.observation_concept_id in (
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%tuberculosis%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation')
) then 1 else 0 end 결핵
from observation o
order by o.person_id) as tp
group by tp.person_id) as tp2;