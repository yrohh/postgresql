-- �̸��� ������ ��� �������� ���� --
update munjin set (pheno_id, pheno_name, main, negative, period_, target, insert_dt, writer, comment_)
= (p.pheno_id, '��', 'sub', '0', 'present', 'adult', '2021-09-17', 'yoon', '�ϰ� ����')
from pheno p
where (answer_name = '���� ��') and p.pheno = '��';

-- �̸��� ������ ��� �������� ���� --
update munjin set (pheno_id, pheno_name, main, negative, period_, target, insert_dt, writer, comment_)
= (p.pheno_id, '���� ���', 'sub', '0', 'present', 'adult', '2021-09-17', 'yoon', '�ϰ� ����')
from pheno p
where (answer_name = '���� ���') and p.pheno = '���� ���';
