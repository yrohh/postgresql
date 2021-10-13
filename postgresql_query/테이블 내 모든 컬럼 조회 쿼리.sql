-- 테이블 내 모든 컬럼 조회 쿼리
select column_name 
from information_schema.columns 
where table_name = '테이블명'
order by ordinal_position;