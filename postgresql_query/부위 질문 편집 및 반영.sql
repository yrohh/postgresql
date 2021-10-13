update new_munjin 
set (pheno_id, pheno_name, main, negative, period_, target, qualifier_id, qualifier_name, property, value, value2, unit, unit_standard, sct_code, sct_name, insert_dt, update_dt, writer, comment_)
= (m.pheno_id, m.pheno_name, m.main, m.negative :: int, m.period_, m.target, m.qualifier_id, m.qualifier_name, m.property, m.value, m.value2, m.unit, m.unit_standard, m.sct_code, m.sct_name, m.insert_dt, m.update_dt, m.writer, m.comment_)
from munjin m
where new_munjin.naire_id = m.naire_id and new_munjin.question_id = m.question_id and new_munjin.answer_id = m.answer_id;

update new_munjin
set (main, negative, period_, target, qualifier_id, qualifier_name, property, value, value2, unit, unit_standard, sct_code, sct_name, insert_dt, update_dt, writer, comment_)
= (null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null) 
where question_name like '%부위%' and insert_dt is not null and (value ='하복부' or comment_ like '%부위에%'or value='여성 성교통 부위' or writer = 'shin');

select count(*)
from munjin m 
where m.insert_dt is not null;

select count(*)
from new_munjin nm 
where nm.insert_dt is not null;

select *
from munjin m 
where length(m.comment_) >=1 and m.comment_ !='일괄 수행' and m.comment_ !='None' ;

select count(*)
from new_munjin nm;
