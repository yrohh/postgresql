-- Comment를 통해 추후 고려가 필요하다고 나타낸 레이블들. in Munjin
select * from munjin where (comment_ is not null and comment_ != '' and comment_ != 'None' and comment_ not like '%일괄 수행%' and comment_ != 'NONE') order by munjin_id ;


-- 두 가지 경우를 함께 언급하는 질답 레이블들. in Munjin
select * from munjin where answer_name like '%또는%' or answer_name like '%둘다%' or answer_name like '%및%';


-- 하나의 질답에만 적용된 Pheno. in Pheno [820개]
select pheno_name, count(*) from munjin group by pheno_name having count(*) <= 2;



-- 분류에 사용되지 않은 Pheno. in Pheno [13개 존재]
select *
from pheno
where pheno_id in (
select distinct(pheno_id) from pheno
except 
select distinct(pheno_id) from munjin
order by pheno_id);


-- 분류에 사용되지 않은 Qualifier. in Qualifier [13개 존재]
select name_eng from qualifier q
except 
select distinct qualifier_name from munjin;


