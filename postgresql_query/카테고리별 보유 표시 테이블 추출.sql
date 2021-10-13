-- �� ���� Ű���� ���� ���� ���̺� ����_observation ���̺� ����.
select distinct (tp2.person_id), case when tp2.�� >= 1 then 1 else 0 end ��
from(
select tp.person_id, sum(��) as ��
from(select distinct (o.person_id), case when o.observation_concept_id in (
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%smoke%' or 
c.concept_name like '%smoking%' or
c.concept_name like '%smoker%' or
c.concept_name like '%tobacco%' or
c.concept_name like '%cigarette%' or
c.concept_name like '%snuff%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation')
) then 1 else 0 end ��
from public.observation o
order by o.person_id) as tp
group by tp.person_id) as tp2;


-- ���� ���� Ű���� ���� ���� ���̺� ����_observation ���̺� ����.
select distinct (tp2.person_id), case when tp2.���� >= 1 then 1 else 0 end ����
from(
select tp.person_id, sum(����) as ����
from(select distinct (o.person_id), case when o.observation_concept_id in (
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%drinking%' or 
c.concept_name like '%alcohol abuse%' or
c.concept_name like '%alcohol dependence%' or
c.concept_name like '%drinker%' or
c.concept_name like '%alcholism%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation')
) then 1 else 0 end ����
from public.observation o
order by o.person_id) as tp
group by tp.person_id) as tp2;


-- ������ ���� Ű���� ���� ���� ���̺� ����_observation ���̺� ����.
select distinct (tp2.person_id), case when tp2.������ >= 1 then 1 else 0 end ������
from(
select tp.person_id, sum(������) as ������
from(select distinct (o.person_id), case when o.observation_concept_id in (
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%hypertension%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation')
) then 1 else 0 end ������
from public.observation o
order by o.person_id) as tp
group by tp.person_id) as tp2;


-- �̻��������� ���� Ű���� ���� ���� ���̺� ����_observation ���̺� ����.
select distinct (tp2.person_id), case when tp2.�̻��������� >= 1 then 1 else 0 end �̻���������
from(
select tp.person_id, sum(�̻���������) as �̻���������
from(select distinct (o.person_id), case when o.observation_concept_id in (
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%dyslipidemia%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation')
) then 1 else 0 end �̻���������
from public.observation o
order by o.person_id) as tp
group by tp.person_id) as tp2;


-- �索�� ���� Ű���� ���� ���� ���̺� ����_observation ���̺� ����.
select distinct (tp2.person_id), case when tp2.�索�� >= 1 then 1 else 0 end �索��
from(
select tp.person_id, sum(�索��) as �索��
from(select distinct (o.person_id), case when o.observation_concept_id in (
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%diabetes mellitus%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation')
) then 1 else 0 end �索��
from public.observation o
order by o.person_id) as tp
group by tp.person_id) as tp2;


-- ����������ȯ ���� Ű���� ���� ���� ���̺� ����_observation ���̺� ����.
select distinct (tp2.person_id), case when tp2.����������ȯ >= 1 then 1 else 0 end ����������ȯ
from(
select tp.person_id, sum(����������ȯ) as ����������ȯ
from(select distinct (o.person_id), case when o.observation_concept_id in (
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%Chronic kidney disease%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation')
) then 1 else 0 end ����������ȯ
from public.observation o
order by o.person_id) as tp
group by tp.person_id) as tp2;


-- ������ ���� Ű���� ���� ���� ���̺� ����_observation ���̺� ����.
select distinct (tp2.person_id), case when tp2.������ >= 1 then 1 else 0 end ������
from(
select tp.person_id, sum(������) as ������
from(select distinct (o.person_id), case when o.observation_concept_id in (
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%stroke%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation')
) then 1 else 0 end ������
from public.observation o
order by o.person_id) as tp
group by tp.person_id) as tp2;


-- ���� ���� Ű���� ���� ���� ���̺� ����_observation ���̺� ����.
select distinct (tp2.person_id), case when tp2.���� >= 1 then 1 else 0 end ����
from(
select tp.person_id, sum(����) as ����
from(select distinct (o.person_id), case when o.observation_concept_id in (
select distinct c.concept_id 
from concept c 
where (c.concept_name like '%tuberculosis%') and (c.domain_id = 'Condition' or c.domain_id = 'Observation')
) then 1 else 0 end ����
from observation o
order by o.person_id) as tp
group by tp.person_id) as tp2;