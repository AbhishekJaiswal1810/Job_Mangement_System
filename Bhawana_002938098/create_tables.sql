/*User_type & User_account creation Burhanuddin’s part*/
 

declare
v_sql LONG;
begin
v_sql:='CREATE TABLE user_type(
id VARCHAR2(20) not null,
user_Type VARCHAR2(20) not null,
CONSTRAINT User_Type_PK PRIMARY KEY(id)
)';
  execute immediate v_sql;
  exception when others then
    if SQLCODE = -955 then null; else raise; end if;
end;
/

declare
v_sql LONG;
begin
v_sql:='CREATE TABLE user_account(
email VARCHAR2(30) NOT NULL,
user_name VARCHAR2(30) NOT NULL,
password VARCHAR2(20) NOT NULL,
date_of_birth DATE NOT NULL,
gender VARCHAR2(20) NOT NULL,
registration_date DATE NOT NULL,
user_type_id VARCHAR2(20) NOT NULL,
CONSTRAINT user_account_PK PRIMARY KEY(email),
CONSTRAINT user_account_user_typr_FK FOREIGN KEY (user_type_id) REFERENCES user_type(id) on delete cascade
)';
  execute immediate v_sql;
  exception when others then
    if SQLCODE = -955 then null; else raise; end if;
end;
/

/*Creating the table skill_set*/
declare
v_sql LONG;
begin
v_sql:='CREATE TABLE skill_set(
id VARCHAR2(20) not null,
skill_name VARCHAR2(20) not null,
CONSTRAINT skill_set PRIMARY KEY(id)
)';
  execute immediate v_sql;
  exception when others then
    if SQLCODE = -955 then null; else raise; end if;
end;
/

/*Creating the applicant profile table*/
/
declare
v_sql LONG;
begin
v_sql:='create table applicant_profile (
applicants_id VARCHAR2(20) not null,
first_name VARCHAR2(30) not null,
middle_name VARCHAR2(30),
last_name VARCHAR2(30) not null,
street_name VARCHAR2(50) not null,
city VARCHAR2(20) not null,
state VARCHAR2(20) not null,
zip_code VARCHAR2(15) not null,
contect_number VARCHAR2(20),
yoe number not null,
target_industry VARCHAR2(30) not null, 
current_company VARCHAR2(30),
current_salary number,
highest_education VARCHAR2(20),
"race/ethnicity" VARCHAR2(50),
veteran_status VARCHAR2(20),
disability_status VARCHAR2(20),
user_account_email VARCHAR2(30) not null,
constraint applicant_profile_pk primary key (applicants_id),
constraint fk_user_account foreign key (user_account_email) references user_account(email) on delete cascade
)';
  execute immediate v_sql;
  exception when others then
    if SQLCODE = -955 then null; else raise; end if;
end;
/

/*Creating the table applicant_skill*/

declare
v_sql LONG;
begin
v_sql:='CREATE TABLE applicant_skill(
skill_set_id VARCHAR2(20) NOT NULL,
skill_level VARCHAR2(20) NOT NULL,
applicant_applicants_id VARCHAR2(20) NOT NULL,
CONSTRAINT Applicant_skill_Skill_set_FK FOREIGN KEY(skill_set_id) REFERENCES skill_set(id) on delete cascade,
CONSTRAINT Applicant_skill_Applicant_FK FOREIGN KEY(applicant_applicants_id) REFERENCES applicant_profile(applicants_id) on delete cascade,
constraint applicant_skill_pk primary key (skill_set_id,applicant_applicants_id)
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
constraint fk_company_id foreign key (company_id) references company(company_id) on delete cascade,
constraint fk_user_account_email foreign key (user_account_email) references user_account(email) on delete cascade
)';
  execute immediate v_sql;
  exception when others then
    if SQLCODE = -955 then null; else raise; end if;
end;
/

declare
v_sql LONG;
begin
v_sql:='create table job_posting(
job_id varchar(20) not null,
job_type varchar(20) not null,
experience_required number not null,
contact_person_name varchar(30) not null,
contact_person_email varchar(30) not null,
contact_person_last_name varchar(30) not null,
post_date date not null,
job_position varchar(30) not null,
availability_status char(1) not null,
salary number,
recruiter_recruiter_id varchar(20) not null,
constraint job_posting_id_pk primary key(job_id),
constraint recruiter_id_fk foreign key(recruiter_recruiter_id) references recruiter(recruiter_id) on delete cascade
)';
  execute immediate v_sql;
  exception when others then
    if SQLCODE = -955 then null; else raise; end if;
end;
/


/*Creating the table job_skill*/

declare
v_sql LONG;
begin
v_sql:='CREATE TABLE job_skill(
skill_set_id VARCHAR2(20) NOT NULL,
skill_level VARCHAR2(20) NOT NULL,
job_posting_job_id VARCHAR2(20) NOT NULL,
CONSTRAINT Job_skill_Skill_set_FK FOREIGN KEY(skill_set_id) REFERENCES skill_set(id) on delete cascade,
CONSTRAINT Job_skill_Job_posting_FK FOREIGN KEY(job_posting_job_id) REFERENCES job_posting(job_id) on delete cascade,
constraint job_skill_pk primary key(skill_set_id,job_posting_job_id)
)';
  execute immediate v_sql;
  exception when others then
    if SQLCODE = -955 then null; else raise; end if;
end;
/

declare
v_sql LONG;
begin
v_sql:='create table job_applications(
application_id VARCHAR(20) not null,
status varchar(20) not null,
applied_date date not null,
applicant_applicants_id varchar(20) not null,
job_posting_job_id varchar(20) not null,
constraint job_application_pk primary key(application_id),
constraint fk_job_applicant_id foreign key(applicant_applicants_id) references applicant_profile(applicants_id) on delete cascade,
constraint fk_job_posting_id foreign key(job_posting_job_id) references job_posting(job_id) on delete cascade
)';
  execute immediate v_sql;
  exception when others then
    if SQLCODE = -955 then null; else raise; end if;
end;
/
