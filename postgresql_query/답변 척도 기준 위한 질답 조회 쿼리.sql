-- �� ���� ���� �� ���� ��ȸ
select aa.question_id, aa.question_name, vnn.view_name
from(
select tnn.question_id, tnn.question_name 
from tb_name_nquestion tnn 
where tnn.question_name like '%{B}�Ⱓ{/B}%'
) as aa
left join v_nquestion_nanswer vnn 
on aa.question_id = vnn.question_id
where vnn.language_type = 'ko';

-- Ƚ�� ���� ���� �� ���� ��ȸ
select bb.question_id, bb.question_name, vrt.display_name 
FROM (
select aa.question_id, aa.question_name, vnn.view_id 
from(
select tnn.question_id, tnn.question_name 
from tb_name_nquestion tnn 
where tnn.question_name like '%{B}�Ⱓ{/B}%'
) as aa
left join v_nquestion_nanswer vnn 
on aa.question_id = vnn.question_id
where vnn.language_type = 'ko'
) as bb
left join v_range_type vrt 
on bb.view_id = vrt.range_id 
where vrt.language_type = 'ko'
order by question_id;

-- Ƚ�� ���� ���� �� ���� ��ȸ
select bb.question_id, bb.question_name, vrt.display_name 
FROM (
select aa.question_id, aa.question_name, vnn.view_id 
from(
select tnn.question_id, tnn.question_name 
from tb_name_nquestion tnn 
where tnn.question_name like '%{B}�Ⱓ{/B}%'
) as aa
left join v_nquestion_nanswer vnn 
on aa.question_id = vnn.question_id
where vnn.language_type = 'ko'
) as bb
left join v_range_type vrt 
on bb.view_id = vrt.range_id 
where vrt.language_type = 'ko'
order by question_id;
