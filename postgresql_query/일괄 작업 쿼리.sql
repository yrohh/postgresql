select *
from munjin
where naire_name = '실신 질문지';

select *
from munjin m
where (answer_name ='연하 곤란' or answer_name ='역류성 인후두염') and insert_dt is not null;


-- 약 복용 쿼리 --
update munjin set (pheno_id, pheno_name, main, negative, period_, target, insert_dt, writer, comment_, qualifier_name, value)
= (137, '약 복용', 'sub', '0', 'present', 'adult', '2021-09-27', 'yoon', '일괄 수행', 'Drug or medicament', answer_name)
where (answer_name ='천식흡입제')or;

-- 이름이 상이할 경우 증상현상 쿼리 --
update munjin set (pheno_id, pheno_name, main, negative, period_, target, insert_dt, writer, comment_)
= (p.pheno_id, '삼킬때 통증', 'sub', '0', 'present', 'adult', '2021-09-23', 'yoon', '일괄 수행')
from pheno p
where (answer_name = '삼킬때 목통증') and p.pheno = '삼킬때 통증'or;

-- 반복 증상/현상 일괄 처리 쿼리 --
update munjin set (pheno_id, pheno_name, main, negative, period_, target, insert_dt, writer, comment_)
= (pheno.pheno_id, answer_name, 'sub', '0', 'present', 'adult', '2021-09-23', 'yoon', '일괄 수행')
from pheno
where answer_name = pheno.pheno and (answer_name ='연하 곤란' or answer_name ='역류성 인후두염')or;


-- 증상현상 잘못 입력된 경우 수정 쿼리 --
update munjin set (pheno_id, pheno_name)
= (pheno.pheno_id , '자궁내 피임장치')
from pheno
where pheno.pheno = '자궁내 피임장치' and (pheno_name = '피임장치')or;


-- 동일 질문에 대한 '아니요'값 '예'값으로 일괄 처리 (Recurrence, Condition course, Family history of clinical finding) 제외

update munjin 
set (pheno_name, main, negative, period_, target, qualifier_name, property, value, unit, unit_standard, insert_dt, writer, comment_)
= (tt.pheno_name, tt.main, '1', tt.period_, tt.target, tt.qualifier_name, tt.property, tt.value, tt.unit, tt.unit_standard, '2021-09-30', 'yoon', '일괄 수행')
from (
select t.munjin_id, t.question_id, t.pheno_name, t.main, t.negative, t.period_, t.target, t.qualifier_name, t.property, t.value, t.unit, t.unit_standard, t.insert_dt, t.writer, t.comment_
from munjin t
where t.answer_name = '예' and t.insert_dt is not null and t.qualifier_name != 'Recurrence' and t.qualifier_name != 'Condition course' and t.qualifier_name != 'Family history of clinical finding') as tt 
where munjin.question_id = tt.question_id and munjin.answer_name = '아니요';


select m2.munjin_id as index, m2.naire_name as gubun, m2.question_name as question, m2.answer_name as answer, m2.pheno_name as hyun, m2.main, m2.period_ as period, m2.negative , m2.target , m2.qualifier_name as qualifier, m2.property , m2.value , m2.unit , m2.unit_standard, m2.writer , m2.comment_ as comment, m2.value2, m2.insert_dt, m2.update_dt
        from munjin.munjin m2 
        join (
        select m.question_id
        from munjin.munjin m 
        where m.answer_name = '예' and m.insert_dt is not null) as tt 
        on m2.question_id = tt.question_id
        order by m2.question_id, m2.answer_id desc;
       
-- \ --

-- 기타 답변들 모두 NONE으로 일괄 처리 
update munjin
set (insert_dt, writer, comment_) = ('2021-09-30', 'yoon', '일괄 수행_NONE')
where answer_name = '잘 기억안남' or answer_name = '잘 기억 안 남' or answer_name = '해당 없음' or answer_name = '잘 모르겠음';

select *
from munjin m 
where answer_name = '잘 기억안남' or answer_name = '잘 기억 안 남' or answer_name = '해당 없음' or answer_name = '잘 모르겠음';
-- \ --

-- 구분 질문지 작업도 순서로 나열 
select naire_name, '(' || round(not_null_count :: decimal /all_count :: decimal * 100,2) || '%' || ')' as "percent" from munjin.v_show_pct order by round(not_null_count :: decimal /all_count :: decimal * 100,2);
-- \ --


select * from pheno where pheno not like '% %' order by pheno_id limit 50;