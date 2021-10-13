select *
from munjin
where naire_name = '�ǽ� ������';

select *
from munjin m
where (answer_name ='���� ���' or answer_name ='������ ���ĵο�') and insert_dt is not null;


-- �� ���� ���� --
update munjin set (pheno_id, pheno_name, main, negative, period_, target, insert_dt, writer, comment_, qualifier_name, value)
= (137, '�� ����', 'sub', '0', 'present', 'adult', '2021-09-27', 'yoon', '�ϰ� ����', 'Drug or medicament', answer_name)
where (answer_name ='õ��������')or;

-- �̸��� ������ ��� �������� ���� --
update munjin set (pheno_id, pheno_name, main, negative, period_, target, insert_dt, writer, comment_)
= (p.pheno_id, '��ų�� ����', 'sub', '0', 'present', 'adult', '2021-09-23', 'yoon', '�ϰ� ����')
from pheno p
where (answer_name = '��ų�� ������') and p.pheno = '��ų�� ����'or;

-- �ݺ� ����/���� �ϰ� ó�� ���� --
update munjin set (pheno_id, pheno_name, main, negative, period_, target, insert_dt, writer, comment_)
= (pheno.pheno_id, answer_name, 'sub', '0', 'present', 'adult', '2021-09-23', 'yoon', '�ϰ� ����')
from pheno
where answer_name = pheno.pheno and (answer_name ='���� ���' or answer_name ='������ ���ĵο�')or;


-- �������� �߸� �Էµ� ��� ���� ���� --
update munjin set (pheno_id, pheno_name)
= (pheno.pheno_id , '�ڱó� ������ġ')
from pheno
where pheno.pheno = '�ڱó� ������ġ' and (pheno_name = '������ġ')or;


-- ���� ������ ���� '�ƴϿ�'�� '��'������ �ϰ� ó�� (Recurrence, Condition course, Family history of clinical finding) ����

update munjin 
set (pheno_name, main, negative, period_, target, qualifier_name, property, value, unit, unit_standard, insert_dt, writer, comment_)
= (tt.pheno_name, tt.main, '1', tt.period_, tt.target, tt.qualifier_name, tt.property, tt.value, tt.unit, tt.unit_standard, '2021-09-30', 'yoon', '�ϰ� ����')
from (
select t.munjin_id, t.question_id, t.pheno_name, t.main, t.negative, t.period_, t.target, t.qualifier_name, t.property, t.value, t.unit, t.unit_standard, t.insert_dt, t.writer, t.comment_
from munjin t
where t.answer_name = '��' and t.insert_dt is not null and t.qualifier_name != 'Recurrence' and t.qualifier_name != 'Condition course' and t.qualifier_name != 'Family history of clinical finding') as tt 
where munjin.question_id = tt.question_id and munjin.answer_name = '�ƴϿ�';


select m2.munjin_id as index, m2.naire_name as gubun, m2.question_name as question, m2.answer_name as answer, m2.pheno_name as hyun, m2.main, m2.period_ as period, m2.negative , m2.target , m2.qualifier_name as qualifier, m2.property , m2.value , m2.unit , m2.unit_standard, m2.writer , m2.comment_ as comment, m2.value2, m2.insert_dt, m2.update_dt
        from munjin.munjin m2 
        join (
        select m.question_id
        from munjin.munjin m 
        where m.answer_name = '��' and m.insert_dt is not null) as tt 
        on m2.question_id = tt.question_id
        order by m2.question_id, m2.answer_id desc;
       
-- \ --

-- ��Ÿ �亯�� ��� NONE���� �ϰ� ó�� 
update munjin
set (insert_dt, writer, comment_) = ('2021-09-30', 'yoon', '�ϰ� ����_NONE')
where answer_name = '�� ���ȳ�' or answer_name = '�� ��� �� ��' or answer_name = '�ش� ����' or answer_name = '�� �𸣰���';

select *
from munjin m 
where answer_name = '�� ���ȳ�' or answer_name = '�� ��� �� ��' or answer_name = '�ش� ����' or answer_name = '�� �𸣰���';
-- \ --

-- ���� ������ �۾��� ������ ���� 
select naire_name, '(' || round(not_null_count :: decimal /all_count :: decimal * 100,2) || '%' || ')' as "percent" from munjin.v_show_pct order by round(not_null_count :: decimal /all_count :: decimal * 100,2);
-- \ --


select * from pheno where pheno not like '% %' order by pheno_id limit 50;