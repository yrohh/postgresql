select * from pheno where category = 'procedure' or category = 'disorder' order by pheno_id;

select naire_name, question_name, answer_name, pheno_name, value, body1, body2 from munjin2 where qualifier_name = 'Body structure' order by body1;


update munjin2 set body1 
= '����Ǯ'
where value = '����Ǯ';

update munjin2 set (body1, body2) 
= ('����Ǯ', '������ �Ʒ�')
where value = '������ �Ʒ� ����Ǯ';

update munjin2 set (body1, body2) 
= ('����Ǯ', '���� ��')
where value = '���� �� ����Ǯ';

update munjin2 set (body1, body2) 
= ('����Ǯ', '���� �Ʒ�')
where value = '���� �Ʒ� ����Ǯ';

update munjin2 set (body1, body2) 
= ('����Ǯ', '������ ��')
where value = '������ �� ����Ǯ';



select value, count(*) from munjin2 where qualifier_name = 'Body structure' group by value order by count(*) desc;

select * from munjin2 where value like '%����Ǯ%' and qualifier_name = 'Body structure';