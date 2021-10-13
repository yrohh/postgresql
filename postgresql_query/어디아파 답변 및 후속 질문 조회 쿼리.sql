select vnn.view_name as ������_�亯, count(*) as �ش�_�亯_����_����_��
from v_nquestion_nanswer vnn 
where vnn.language_type = 'ko'
GROUP by vnn.view_name
order by count(*) desc;


-- �ļ� ���� ��ȸ
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


