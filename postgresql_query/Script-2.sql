select * from pheno2 where pheno = 'ธิดู';


select count(*) from pheno;


select * from pheno
where pheno_id in (
select distinct pheno_id from pheno
except 
select distinct pheno_id from munjin)
order by pheno_id;


select distinct pheno_id from pheno
except 
select distinct pheno_id from munjin;

delete from pheno2 where pheno_id in (839,824,1143,841,220,822,823,922,811,799,1144,840,921,1146,1145,826,800,1077,681,1142,892,1099,809,132,1066,813,871,1180,218,919,1067,920,873,821,894,290,869,825,291,804,827,812,1147,1068,801,995,828
);

select * from pheno2 where pheno_id = 839


