-- Comment�� ���� ���� ����� �ʿ��ϴٰ� ��Ÿ�� ���̺��. in Munjin
select * from munjin where (comment_ is not null and comment_ != '' and comment_ != 'None' and comment_ not like '%�ϰ� ����%' and comment_ != 'NONE') order by munjin_id ;


-- �� ���� ��츦 �Բ� ����ϴ� ���� ���̺��. in Munjin
select * from munjin where answer_name like '%�Ǵ�%' or answer_name like '%�Ѵ�%' or answer_name like '%��%';


-- �ϳ��� ���信�� ����� Pheno. in Pheno [820��]
select pheno_name, count(*) from munjin group by pheno_name having count(*) <= 2;



-- �з��� ������ ���� Pheno. in Pheno [13�� ����]
select *
from pheno
where pheno_id in (
select distinct(pheno_id) from pheno
except 
select distinct(pheno_id) from munjin
order by pheno_id);


-- �з��� ������ ���� Qualifier. in Qualifier [13�� ����]
select name_eng from qualifier q
except 
select distinct qualifier_name from munjin;


