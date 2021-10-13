select in1.symptom_id, in1.symptom_name, in1.question_id, in1.question_name, cc.view_name 
	from(
		select aa.symptom_id, bb.symptom_name, aa.question_id, aa.question_name
			from v_nsymptom_nquestion aa
			        left join v_nsymptom bb on aa.symptom_id = bb.symptom_id # ¡ıªÛ∏Ì.
						where aa.language_type = 'ko' and bb.language_type = 'ko'
		) as in1
	left join v_nquestion_nanswer cc on in1.question_id = cc.question_id 
		where cc.language_type = 'ko'
order by in1.symptom_id, in1.question_id;
		