-- 이름이 상이할 경우 증상현상 쿼리 --
update munjin set (pheno_id, pheno_name, main, negative, period_, target, insert_dt, writer, comment_)
= (p.pheno_id, '비염', 'sub', '0', 'present', 'adult', '2021-09-17', 'yoon', '일괄 수행')
from pheno p
where (answer_name = '만성 비염') and p.pheno = '비염';

-- 이름이 상이할 경우 증상현상 쿼리 --
update munjin set (pheno_id, pheno_name, main, negative, period_, target, insert_dt, writer, comment_)
= (p.pheno_id, '연하 곤란', 'sub', '0', 'present', 'adult', '2021-09-17', 'yoon', '일괄 수행')
from pheno p
where (answer_name = '연하 장애') and p.pheno = '연하 곤란';
