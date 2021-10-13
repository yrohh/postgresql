-- 양 관련 질문 및 보기 조회
select aa.question_id, aa.question_name, vnn.view_name
from(
select tnn.question_id, tnn.question_name 
from tb_name_nquestion tnn 
where tnn.question_name like '%{B}기간{/B}%'
) as aa
left join v_nquestion_nanswer vnn 
on aa.question_id = vnn.question_id
where vnn.language_type = 'ko';

-- 횟수 관련 질문 및 보기 조회
select bb.question_id, bb.question_name, vrt.display_name 
FROM (
select aa.question_id, aa.question_name, vnn.view_id 
from(
select tnn.question_id, tnn.question_name 
from tb_name_nquestion tnn 
where tnn.question_name like '%{B}기간{/B}%'
) as aa
left join v_nquestion_nanswer vnn 
on aa.question_id = vnn.question_id
where vnn.language_type = 'ko'
) as bb
left join v_range_type vrt 
on bb.view_id = vrt.range_id 
where vrt.language_type = 'ko'
order by question_id;

-- 횟수 관련 질문 및 보기 조회
select bb.question_id, bb.question_name, vrt.display_name 
FROM (
select aa.question_id, aa.question_name, vnn.view_id 
from(
select tnn.question_id, tnn.question_name 
from tb_name_nquestion tnn 
where tnn.question_name like '%{B}기간{/B}%'
) as aa
left join v_nquestion_nanswer vnn 
on aa.question_id = vnn.question_id
where vnn.language_type = 'ko'
) as bb
left join v_range_type vrt 
on bb.view_id = vrt.range_id 
where vrt.language_type = 'ko'
order by question_id;
