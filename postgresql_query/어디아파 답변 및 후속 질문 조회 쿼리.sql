select vnn.view_name as 어디아파_답변, count(*) as 해당_답변_포함_질문_수
from v_nquestion_nanswer vnn 
where vnn.language_type = 'ko'
GROUP by vnn.view_name
order by count(*) desc;


-- 후속 질문 조회
select DISTINCT tt.question_name
from(
select *
from v_nquestion vn 
where vn.question_id in (
select vnn.next_question_id 
from v_nquestion_nanswer vnn 
where vnn.next_question_id is not null)
having vn.language_type ='ko'
) as tt;


