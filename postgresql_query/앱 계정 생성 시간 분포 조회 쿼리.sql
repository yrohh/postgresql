-- �� ���� ���� �ð� ���� ��ȸ ����.
select hour(create_dt), count(*)
from tb_user
group by hour(create_dt)
order by count(*) desc;

# 17��-10��-11�� ������ ���� ���� �� ����.

