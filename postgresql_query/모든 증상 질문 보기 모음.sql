SELECT
	aaa.symptom_name,
	aaa.question_name,
	tnn3.answer_name
from
	(
	select
		aa.symptom_name,
		aa.question_name,
		tnn2.view_id
	FROM
		(
		select
			a.symptom_name,
			a.question_id,
			tnq.question_name
		from
			(
			select
				tns.symptom_name,
				tnn.question_id
			from
				tb_nsymptom_nquestion tnn
			left join tb_name_nsymptom tns on
				tns.symptom_id = tnn.symptom_id
			where
				tns.language_type = 'ko') as a
		left join tb_name_nquestion tnq on
			tnq.question_id = a.question_id
			and tnq.language_type = 'ko') as aa
	left join tb_nquestion_nanswer tnn2 on
		tnn2.question_id = aa.question_id) as aaa
left join tb_name_nanswer tnn3 on
	tnn3.answer_id = aaa.view_id
where
	tnn3.language_type = 'ko';