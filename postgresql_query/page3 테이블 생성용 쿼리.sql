select ms.step2_id , vnc.category, ms.question_name , ms.answer_name , ms.step1_id , vnp.pheno , vnp.main_status, vnp.period, vnq.name_eng , ms.property , ms.value , ms.unit , ms.unit_standard 
from munjin_step2 ms 
left join v_name_category vnc 
on ms.category_id = vnc.category_id -- 카테고리명.
left join v_name_pheno vnp 
on ms.step1_id = vnp.step1_id -- 증상명.
left join v_name_qualifier vnq 
on ms.qualifier_id = vnq.qualifier_id -- 분류명.
order by ms.step2_id;

