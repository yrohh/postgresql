-- 사용 OS별 빈도 조회.
-- 방법 : os_type 레이블별 개수 산출.
SELECT os_type, COUNT(*) 
FROM tb_user_device tud 
GROUP BY os_type
order by count(*) desc;

-- 전체 414건 중 IOS 38건, 브라우저 26건, 안드로이드 22건이며, 확인되지 않는 328건의 기록 확인.

SELECT COUNT(*) 
FROM tb_user_device tud ;