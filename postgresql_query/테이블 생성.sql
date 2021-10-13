--1-- pheno 테이블 생성.
create sequence pheno_id;

create table pheno(
pheno_id int not null primary key default nextval('pheno_id'),
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
qualifier_id int not null primary key default nextval('qualifier_id'),
name_eng varchar,
sct_code varchar,
name_kor varchar,
description text,
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
step1_id int not null primary key default nextval('munjin_step1_id'),
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
step2_id int not null primary key default nextval('munjin_step2_id'),
pheno_id int,
question_id int,
question_name varchar,
answer_id int,
answer_name varchar,
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

--4-- category 테이블 생성.
create sequence category_id;

create table category(
category_id int not null primary key default nextval('category_id'),
category varchar,
writer text
);
alter sequence category_id owned by category.category_id; -- for 인덱스 숫자 자동 증가.


--5-- naire 테이블 생성.
create sequence naire_id;

create table naire(
naire_id int not null primary key default nextval('naire_id'),
naire_name varchar,
writer text
);
alter sequence naire_id owned by naire.naire_id; -- for 인덱스 숫자 자동 증가.


--6-- munjin 테이블 생성.
create sequence munjin_id;

create table munjin(
munjin_id int not null primary key default nextval('munjin_id'),
naire_id int,
naire_name varchar,
question_id varchar,
question_name varchar,
answer_id varchar,
answer_name varchar,
pheno_id int,
pheno_name varchar,
main varchar,
negative int,
period_ varchar,
target varchar,
qualifier_id int,
qualifier_name varchar,
property varchar,
value varchar,
unit varchar,
unit_standard varchar,
sct_code varchar,
sct_name varchar,
insert_dt date,
update_dt date,
writer text,
comment_ text
);
alter sequence munjin_id owned by munjin.munjin_id; -- for 인덱스 숫자 자동 증가.
