-- 앱 계정 생성 시간 분포 조회 쿼리.
select hour(create_dt), count(*)
from tb_user
group by hour(create_dt)
order by count(*) desc;

# 17시-10시-11시 순으로 계정 생성 수 많음.

