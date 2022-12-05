update applicant_profile ap set state=’TX’ where applicants_id=’a30’;
select * from applicant_profile;
delete from applican_profile where user_account_email=’burhan@xyz.com’;
/
declare
v_sql LONG;
begin
v_sql:='create table company(
company_id VARCHAR2(20) primary key,
company_name VARCHAR2(30) not null,
city VARCHAR2(20) not null,
state VARCHAR2(20) not null,
zipcode VARCHAR2(15) not null,
contact_number VARCHAR2(20) not null
)';
execute immediate v_sql;
exception when others then
if SQLCODE = -955 then null; else raise; end if;
end;
/
insert /*+ ignore_row_on_dupkey_index ( company ( company_id ) ) */ into company
(company_id,company_name,city,state,zipcode,contact_number)
values
('c001','cmp001','boston','MA','02215','9865241236');
insert /*+ ignore_row_on_dupkey_index ( company ( company_id ) ) */ into company
(company_id,company_name,city,state,zipcode,contact_number)
values
('c002','cmp002','boston','MA','02115','8514756325');
insert /*+ ignore_row_on_dupkey_index ( company ( company_id ) ) */ into company
(company_id,company_name,city,state,zipcode,contact_number)
values
('c003','cmp002','watertown','MA','05245','5624157896');
insert /*+ ignore_row_on_dupkey_index ( company ( company_id ) ) */ into company
(company_id,company_name,city,state,zipcode,contact_number)
values
('c004','google','boston','MA','05245','8574129645');
insert /*+ ignore_row_on_dupkey_index ( company ( company_id ) ) */ into company
(company_id,company_name,city,state,zipcode,contact_number)
values
('c005','FB','atlanta','GA','05245','9645781523');
insert /*+ ignore_row_on_dupkey_index ( company ( company_id ) ) */ into company
(company_id,company_name,city,state,zipcode,contact_number)
values
('c006','Meta','Manhattan','NY','85452','2541967852');
insert /*+ ignore_row_on_dupkey_index ( company ( company_id ) ) */ into company
(company_id,company_name,city,state,zipcode,contact_number)
values
('c007','Netflix','portland','MN','96402','6325957586');
insert /*+ ignore_row_on_dupkey_index ( company ( company_id ) ) */ into company
(company_id,company_name,city,state,zipcode,contact_number)
values
('c008','Spotify','washington','DC','02576','7845259585');
insert /*+ ignore_row_on_dupkey_index ( company ( company_id ) ) */ into company
(company_id,company_name,city,state,zipcode,contact_number)
values
('c009','LTI','washington','DC','02576','5186947586');
insert /*+ ignore_row_on_dupkey_index ( company ( company_id ) ) */ into company
(company_id,company_name,city,state,zipcode,contact_number)
values
('c010','CG','boston','MA','02215','8564729136');
insert /*+ ignore_row_on_dupkey_index ( company ( company_id ) ) */ into company
(company_id,company_name,city,state,zipcode,contact_number)
values
('c011','GEP','Manhattan','NY','85452','4578953215');
insert /*+ ignore_row_on_dupkey_index ( company ( company_id ) ) */ into company
(company_id,company_name,city,state,zipcode,contact_number)
values
('c012','PathAI','boston','MA','02115','6585451535');
insert /*+ ignore_row_on_dupkey_index ( company ( company_id ) ) */ into company
(company_id,company_name,city,state,zipcode,contact_number)
values
('c013','Mckenzie','dallas','TX','62054','4515368975');
insert /*+ ignore_row_on_dupkey_index ( company ( company_id ) ) */ into company
(company_id,company_name,city,state,zipcode,contact_number)
values
('c014','JPMC','scranton','PA','52014','9575123652');
insert /*+ ignore_row_on_dupkey_index ( company ( company_id ) ) */ into company
(company_id,company_name,city,state,zipcode,contact_number)
values
('c015','Dunder Mifflin','scranton','MA','53025','8545961535');
update company ap set state='TX' where company_id='c015';
select * from company;
delete from company where company_id='c015';
/
declare
v_sql LONG;
begin
v_sql:='create table recruiter(
recruiter_id VARCHAR2(20) not null,
first_name VARCHAR2(30) not null,
last_name VARCHAR2(30) not null,
contact_number VARCHAR2(20) not null,
candidate_type VARCHAR2(20) not null,
company_id VARCHAR2(20) not null,
user_account_email VARCHAR2(30) not null,
constraint recruiter_pk primary key (recruiter_id),
constraint fk_company_id foreign key (company_id) references company(company_id),
constraint fk_user_account_email foreign key (user_account_email) references
user_account(email)
)';
execute immediate v_sql;
exception when others then
if SQLCODE = -955 then null; else raise; end if;
end;
/
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r001','Abhishek','Sharma','9654726510','Full-Time','c015','abhishek@xyzcompnay.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r002','Abhishek','Sharma','9645781265','Contractor','c015','abhishek@xyzcompnay.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r003','Anit','Khanna','8545120263','Contractor','c014','anit@compnay.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r004','Anit','Khanna','7845026542','Intern','c014','anit@compnay.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r005','Ajay','Daniels','9510260345','Intern','c013','ajay96@compnay.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r006','Ajay','Daniels','8502006312','Full-Time','c013','ajay96@compnay.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r007','Basil','Beam','7840256987','Full-Time','c012','basil@xyzcompnay.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r008','Basil','Beam','5624157863','Contractor','c012','basil@xyzcompnay.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r009','Chetan','Khan','7452369875','Full-Time','c011','chetan@xyzcompnay.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r010','Chetan','Khan','8541230596','Intern','c011','chetan@xyzcompnay.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r011','Alex','Lau','8741025600','Intern','c010','alex@xyzcompnay.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r012','Alex','Lau','8542306598','Contractor','c010','alex@xyzcompnay.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r013','Bobby','Lashley','3265402987','Intern','c009','bobby@xyz');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r014','Bobby','Lashley','3265402987','Full-Time','c009','bobby@xyz');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r015','Jane','Doe','4523028506','Intern','c008','jane@abc.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r016','Jane','Doe','6602587596','Contractor','c008','jane@abc.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r017','Thomas','Zazper','6502547896','Contractor','c007','thomas@xyzcompnay.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r018','Thomas','Zazper','7586020045','Full-Time','c007','thomas@xyzcompnay.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r019','Roger','Federer','6620523005','Full-Time','c006','roger@jimail.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r020','Roger','Federer','8850214560','Intern','c006','roger@jimail.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r021','Natalie','shaw','6302547896','Contractor','c005','natalie@xyzcompnay.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r022','Natalie','shaw','8850263484','Full-Time','c005','natalie@xyzcompnay.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r023','Roger','Merchant','6620145895','Full-Time','c004','roger@abccompany.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r024','Roger','Merchant','4425968575','Intern','c004','roger@abccompany.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r025','Sophia','Johnson','4520159875','Intern','c003','sophia@xyzcompnay.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r026','Sophia','Johnson','9645202658','Full-Time','c003','sophia@xyzcompnay.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */ into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r027','Dana','Faber','8545712639','Full-Time','c002','dana@abc.com');
insert /*+ ignore_row_on_dupkey_index ( recruiter ( recruiter_id ) ) */
into recruiter
(recruiter_id,first_name,last_name,contact_number,candidate_type,company_id,user_account_
email)
values
('r028','Dana','Faber','8545712639','Contractor','c002','dana@abc.com');

update recruiter rr set candidate_type='Contractor' where company_id='c015';
select * from recruiter;
delete from recruiter where company_id='c015';
insert /*+ ignore_row_on_dupkey_index ( applicant_skill ( skill_set_id,applicant_applicants_id ) )
*/
into applicant_skill
(skill_set_id,skill_level,applicant_applicants_id)
select '19','Beginner','a7' from dual union
select '8','Proficient','a4' from dual union
select '12','Beginner','a4' from dual union
select '21','Proficient','a4' from dual union
select '17','Proficient','a5' from dual union
select '15','Amateur','a5' from dual union
select '1','Proficient','a5' from dual union
select '6','Proficient','a6' from dual union
select '11','Proficient','a6' from dual union
select '10','Proficient','a6' from dual union
select '19','Beginner','a7' from dual union
select '9','Intermediate','a7' from dual union
select '13','Proficient','a7' from dual union
select '19','Beginner','a8' from dual union
select '3','Intermediate','a8' from dual union
select '21','Proficient','a8' from dual union
select '18','Beginner','a9' from dual union
select '12','Intermediate','a9' from dual union
select '9','Intermediate','a9' from dual union
select '17','Proficient','a9' from dual union
select '12','Intermediate','a10' from dual union
select '2','Beginner','a10' from dual union
select '20','Proficient','a10' from dual union
select '11','Intermediate','a11' from dual union
select '4','Proficeint','a11' from dual union
select '3','Beginner','a12' from dual union
select '4','Beginner','a12' from dual union
select '5','Beginner','a12' from dual union
select '16','Intermediate','a12' from dual union
select '17','Intermediate','a12' from dual union
select '18','Proficient','a12' from dual union
select '1','Beginner','a13' from dual union
select '2','Intermediate','a13' from dual union
select '13','Proficient','a13' from dual union
select '14','Proficient','a13' from dual union
select '15','Proficient','a14' from dual union
select '6','Proficient','a14' from dual union
select '19','Proficient','a14' from dual union
select '19','Beginner','a15' from dual union
select '13','Proficient','a15' from dual union
select '3','Intermediate','a15' from dual union
select '13','Proficient','a16' from dual union
select '6','Proficient','a16' from dual union
select '15','Proficient','a16' from dual union
select '13','Proficient','a17' from dual union
select '4','Beginner','a17' from dual union
select '14','Beginner','a17' from dual union
select '19','Beginner','a17' from dual union
select '4','Beginner','a18' from dual union
select '11','Intermediate','a18' from dual union
select '14','Intermediate','a18' from dual union
select '4','Beginner','a19' from dual union
select '16','Intermediate','a19' from dual union
select '9','Proficient','a19' from dual union
select '3','Beginner','a20' from dual union
select '2','Beginner','a20' from dual union
select '7','Beginner','a20' from dual union
select '14','Beginner','a20' from dual union
select '15','Beginner','a20' from dual union
select '13','Intermediate','a21' from dual union
select '14','Intermediate','a21' from dual union
select '19','Proficient','a21' from dual union
select '19','Proficient','a22' from dual union
select '16','Proficient','a22' from dual union
select '20','Proficient','a22' from dual union
select '19','Proficient','a23' from dual union
select '1','Intermediate','a23' from dual union
select '9','Intermediate','a23' from dual union
select '19','Proficient','a24' from dual union
select '6','Proficient','a24' from dual union
select '21','Beginner','a25' from dual union
select '12','Intermediate','a25' from dual union
select '2','Proficient','a25' from dual union
select '21','Beginner','a26' from dual union
select '13','Proficient','a26' from dual union
select '17','Proficient','a27' from dual union
select '19','Proficient','a27' from dual union
select '2','Proficient','a27' from dual union
select '14','Proficient','a28' from dual union
select '13','Proficient','a28' from dual union
select '9','Intermediate','a29' from dual union
select '8','Intermediate','a29' from dual union
select '3','Intermediate','a29' from dual union
select '3','Proficient','a30' from dual union
select '13','Intermediate','a30' from dual union
select '18','Intermediate','a30' from dual union
select '1','Proficient','a1' from dual union
select '2','Proficient','a1' from dual union
select '4','Proficient','a2' from dual union
select '5','Proficient','a2' from dual union
select '2','Proficient','a2' from dual union
select '1','Proficient','a3' from dual union
select '8','Proficient','a3' from dual;
update applicant_skill ai set skill_level='Beginner' where applicant_applicants_id='a3';
select * from applicant_skill;
delete from applicant_skill where applicant_applicants_id='a3';