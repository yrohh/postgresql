-- ���̺� ���� ����
create table pheno_copy as
select * from pheno order by pheno_id;


-- ���̺� ���� ����
drop table pheno_copy;


-- ���̺� ���� ���� ����
create table pheno_copy as
select * from pheno2 where 1=2;

