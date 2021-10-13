select distinct pheno
from munjin.pheno;


select count(*) from munjin where insert_dt is not null; -- 2356
select count(*) from munjin; -- 8472

select round((select count(*) from munjin where insert_dt is not null) :: decimal  / count(*) :: decimal * 100, 2) || '%' as "progress"
from munjin;



select *
from munjin m where m.answer_name = 'OPTION';

select distinct pheno from munjin.pheno;