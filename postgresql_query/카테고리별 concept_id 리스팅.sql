--ī�װ�_��
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%smoke%' or 
c.concept_name like '%smoking%' or
c.concept_name like '%smoker%' or
c.concept_name like '%tobacco%' or
c.concept_name like '%cigarette%' or
c.concept_name like '%snuff%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation');

--ī�װ�_����
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%drinking%' or 
c.concept_name like '%alcohol abuse%' or
c.concept_name like '%alcohol dependence%' or
c.concept_name like '%drinker%' or
c.concept_name like '%alcholism%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation');

--ī�װ�_������
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%hypertension%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation');

--ī�װ�_�̻���������
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%dyslipidemia%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation');

--ī�װ�_�索��
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%diabetes mellitus%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation');

--ī�װ�_����������ȯ
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%Chronic kidney disease%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation');

--ī�װ�_������
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%stroke%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation');

--ī�װ�_����
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%tuberculosis%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation');