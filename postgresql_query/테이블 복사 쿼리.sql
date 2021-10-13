-- 테이블 복사 쿼리
create table pheno_copy as
select * from pheno order by pheno_id;


-- 테이블 삭제 쿼리
drop table pheno_copy;


-- 테이블 구조 복사 쿼리
create table pheno_copy as
select * from pheno2 where 1=2;

