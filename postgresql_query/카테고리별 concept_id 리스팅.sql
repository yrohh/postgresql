--카테고리_흡연
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%smoke%' or 
c.concept_name like '%smoking%' or
c.concept_name like '%smoker%' or
c.concept_name like '%tobacco%' or
c.concept_name like '%cigarette%' or
c.concept_name like '%snuff%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation');

--카테고리_음주
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%drinking%' or 
c.concept_name like '%alcohol abuse%' or
c.concept_name like '%alcohol dependence%' or
c.concept_name like '%drinker%' or
c.concept_name like '%alcholism%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation');

--카테고리_고혈압
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%hypertension%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation');

--카테고리_이상지질혈증
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%dyslipidemia%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation');

--카테고리_당뇨병
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%diabetes mellitus%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation');

--카테고리_만성신장질환
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%Chronic kidney disease%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation');

--카테고리_뇌졸증
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%stroke%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation');

--카테고리_결핵
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%tuberculosis%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation');