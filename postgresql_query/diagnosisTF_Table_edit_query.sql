--1-- pheno 테이블 생성.
create sequence pheno_id;

create table pheno(
pheno_id int  primary key default nextval('pheno_id'),
pheno varchar,
category varchar,
"comment" text,
insert_dt date,
update_dt date,
writer text
);
alter sequence pheno_id owned by pheno.pheno_id; -- for 인덱스 숫자 자동 증가.



--2-- qualifier 테이블 생성.
create sequence qualifier_id;

create table qualifier(
qualifier_id int primary key default nextval('qualifier_id'),
name_eng varchar,
sct_code varchar,
name_kor varchar,
property varchar,
value_type varchar,
value varchar,
unit varchar,
unit_standard varchar
);
alter sequence qualifier_id owned by qualifier.qualifier_id; -- for 인덱스 숫자 자동 증가.



--3-- munjin_step1 테이블 생성.
create sequence munjin_step1_id;

create table munjin_step1(
step1_id int primary key default nextval('munjin_step1_id'),
cate_id int,
pheno_id int,
main_status varchar,
negative int,
"period" varchar,
target varchar,
writer text,
insert_dt varchar,
update_dt varchar
);
alter sequence munjin_step1_id owned by munjin_step1.step1_id; -- for 인덱스 숫자 자동 증가.



--4-- munjin_step2 테이블 생성.
create sequence munjin_step2_id;

create table munjin_step2(
step2_id int primary key default nextval('munjin_step2_id'),
question_id int,
answer_id int,
step1_id int,
qualifier_id int,
property varchar,
value varchar,
unit varchar,
unit_standard varchar,
writer text,
insert_dt varchar,
update_dt varchar
);
alter sequence munjin_step2_id owned by munjin_step2.step2_id; -- for 인덱스 숫자 자동 증가.