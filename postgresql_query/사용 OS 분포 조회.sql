-- ��� OS�� �� ��ȸ.
-- ��� : os_type ���̺� ���� ����.
SELECT os_type, COUNT(*) 
FROM tb_user_device tud 
GROUP BY os_type
order by count(*) desc;

-- ��ü 414�� �� IOS 38��, ������ 26��, �ȵ���̵� 22���̸�, Ȯ�ε��� �ʴ� 328���� ��� Ȯ��.

SELECT COUNT(*) 
FROM tb_user_device tud ;