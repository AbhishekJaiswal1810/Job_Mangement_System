/*Creating the table applicant_skill*/

declare
v_sql LONG;
begin
v_sql:='CREATE TABLE applicant_skill(
applicant_skill_id number default applicant_skill_sequence.nextVal not null,
skill_set_id number NOT NULL,
skill_level VARCHAR2(20) NOT NULL,
applicant_applicants_id number NOT NULL,
CONSTRAINT Applicant_skill_Skill_set_FK FOREIGN KEY(skill_set_id) REFERENCES skill_set(id) on delete cascade,
CONSTRAINT Applicant_skill_Applicant_FK FOREIGN KEY(applicant_applicants_id) REFERENCES applicant_profile(applicants_id) on delete cascade,
constraint applicant_skill_pk primary key (applicant_skill_id)
)';
  execute immediate v_sql;
  exception when others then
    if SQLCODE = -955 then null; else raise; end if;
end;
/

declare
v_sql LONG;
begin
v_sql:='create table company(
company_id number default company_sequence.nextVal not null primary key,
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

declare
v_sql LONG;
begin
v_sql:='create or replace table recruiter(
recruiter_id number default recruiter_sequence.nextVal not null,
first_name VARCHAR2(30) not null,
last_name VARCHAR2(30) not null,
contact_number VARCHAR2(20) not null unique,
candidate_type VARCHAR2(20) not null,
company_id number not null,
user_account_email VARCHAR2(30) not null unique,
constraint recruiter_pk primary key (recruiter_id),
constraint fk_company_id foreign key (company_id) references company(company_id) on delete cascade,
constraint fk_user_account_email foreign key (user_account_email) references user_account(email) on delete cascade
)';
  execute immediate v_sql;
  exception when others then
    if SQLCODE = -955 then null; else raise; end if;
end;
/


execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Abhishek','Sharma','9654726510','Full-Time',15,'abhishek@xyzcompnay.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Abhishek','Sharma','9645781265','Contractor',15,'abhishek@xyzcompnay.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Anit','Khanna','8545120263','Contractor',14,'alex@xyzcompnay.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Anit','Khanna','7845026542','Intern',14,'alex@xyzcompnay.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Ajay','Daniels','9510260345','Intern',13,'ajay96@compnay.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Ajay','Daniels','8502006312','Full-Time',13,'ajay96@compnay.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Basil','Beam','7840256987','Full-Time',12,'basil@xyzcompnay.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Basil','Beam','5624157863','Contractor',12,'basil@xyzcompnay.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Chetan','Khan','7452369875','Full-Time',11,'chetan@xyzcompnay.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Chetan','Khan','8541230596','Intern',11,'chetan@xyzcompnay.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Alex','Lau','8741025600','Intern',10,'alex@xyzcompnay.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Alex','Lau','8542306598','Contractor',10,'alex@xyzcompnay.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Bobby','Lashley','3265402987','Intern',09,'bobby@xyz');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Bobby','Lashley','3265402987','Full-Time',09,'bobby@xyz');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Jane','Doe','4523028506','Intern',08,'jane@abc.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Jane','Doe','6602587596','Contractor',08,'jane@abc.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Thomas','Zazper','6502547896','Contractor',07,'thomas@xyzcompnay.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Thomas','Zazper','7586020045','Full-Time',07,'thomas@xyzcompnay.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Roger','Federer','6620523005','Full-Time',06,'roger@jimail.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Roger','Federer','8850214560','Intern',06,'roger@jimail.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Natalie','shaw','6302547896','Contractor',05,'natalie@xyzcompnay.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Natalie','shaw','8850263484','Full-Time',05,'natalie@xyzcompnay.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Roger','Merchant','6620145895','Full-Time',04,'roger@abccompany.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Roger','Merchant','4425968575','Intern',04,'roger@abccompany.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Sophia','Johnson','4520159875','Intern',03,'sophia@xyzcompnay.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Sophia','Johnson','9645202658','Full-Time',03,'sophia@xyzcompnay.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Dana','Faber','8545712639','Full-Time',02,'dana@abc.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Dana','Faber','8545712639','Contractor',02,'dana@abc.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Hilary','CLinton','9645729636','Contractor',01,'alex@xyzcompnay.com');
execute DMDDJOBPORTALSYSADMIN.sp_insertrecruiter('Hilary','CLinton','9645729636','Intern',01,'alex@xyzcompnay.com');


