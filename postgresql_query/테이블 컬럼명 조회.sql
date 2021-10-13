-- 테이블 컬럼명 조회
SELECT ARRAY_TO_STRING(ARRAY_AGG(column_name),',')
  FROM INFORMATION_SCHEMA.COLUMNS
 where TABLE_NAME = 'observation2'
 group by table_catalog;
 
