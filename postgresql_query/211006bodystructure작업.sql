select * from pheno where category = 'procedure' or category = 'disorder' order by pheno_id;

select naire_name, question_name, answer_name, pheno_name, value, body1, body2 from munjin2 where qualifier_name = 'Body structure' order by body1;


update munjin2 set body1 
= '´«²¨Ç®'
where value = '´«²¨Ç®';

update munjin2 set (body1, body2) 
= ('´«²¨Ç®', '¿À¸¥ÂÊ ¾Æ·¡')
where value = '¿À¸¥ÂÊ ¾Æ·¡ ´«²¨Ç®';

update munjin2 set (body1, body2) 
= ('´«²¨Ç®', '¿ÞÂÊ À§')
where value = '¿ÞÂÊ À§ ´«²¨Ç®';

update munjin2 set (body1, body2) 
= ('´«²¨Ç®', '¿ÞÂÊ ¾Æ·¡')
where value = '¿ÞÂÊ ¾Æ·¡ ´«²¨Ç®';

update munjin2 set (body1, body2) 
= ('´«²¨Ç®', '¿À¸¥ÂÊ À§')
where value = '¿À¸¥ÂÊ À§ ´«²¨Ç®';



select value, count(*) from munjin2 where qualifier_name = 'Body structure' group by value order by count(*) desc;

select * from munjin2 where value like '%´«²¨Ç®%' and qualifier_name = 'Body structure';