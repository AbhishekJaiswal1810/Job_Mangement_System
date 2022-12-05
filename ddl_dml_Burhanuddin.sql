/*Creating the table*/

declare v_sql LONG;
begin
v_sql := 'CREATE TABLE user_type(
id VARCHAR2(20) not null,
user_Type VARCHAR2(20) not null,
CONSTRAINT User_Type_PK PRIMARY KEY(id)
)';
execute immediate v_sql;
exception when others then
if SQLCODE = -955 then null; else raise; end if;
end;
/

/*Fetching the table*/
SELECT * FROM all_tables;

/*removing the data from table*/
Truncate table user_type;

/*Alter the table*/
ALTER TABLE user_type
ADD user_permission VARCHAR2(20) NOT NULL;

ALTER TABLE user_type
DROP COLUMN user_permission;

RENAME user_type to user_types;

RENAME user_types to user_type;


/*Creating the table user_account*/
declare
v_sql LONG;
begin
v_sql:='
CREATE TABLE user_account(
email VARCHAR2(30) NOT NULL,
user_name VARCHAR2(30) NOT NULL,
password VARCHAR2(20) NOT NULL,
date_of_birth DATE NOT NULL,
gender VARCHAR2(20) NOT NULL,
registration_date DATE NOT NULL,
user_type_id VARCHAR2(20) NOT NULL,
CONSTRAINT user_account_PK PRIMARY KEY(email),
CONSTRAINT user_account_user_typr_FK FOREIGN KEY (user_type_id) REFERENCES user_type(id)
)';
execute immediate v_sql;
exception when others then
if SQLCODE = -955 then null; 
else raise; 
end if;
end;
/


/*Creating the table applicant_skill*/
CREATE TABLE applicant_skill(
skill_set_id VARCHAR2(20) NOT NULL,
skill_level VARCHAR2(20) NOT NULL,
applicant_applicants_id VARCHAR2(20) NOT NULL,
CONSTRAINT Applicant_skill_Skill_set_FK FOREIGN KEY(skill_set_id) REFERENCES skill_set(id),
CONSTRAINT Applicant_skill_Applicant_FK FOREIGN KEY(applicant_applicants_id) REFERENCES applicant_profile(applicants_id)
);

/*Creating the table skill_set*/
declare v_sql LONG;
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

/*Creating the table job_skill*/
declare v_sql LONG;
begin
v_sql:='CREATE TABLE job_skill(
skill_set_id VARCHAR2(20) NOT NULL,
skill_level VARCHAR2(20) NOT NULL,
job_posting_job_id VARCHAR2(20) NOT NULL,
CONSTRAINT Job_skill_Skill_set_FK FOREIGN KEY(skill_set_id) REFERENCES skill_set(id),
CONSTRAINT Job_skill_Job_posting_FK FOREIGN KEY(job_posting_job_id) REFERENCES job_posting(job_id)
)';
execute immediate v_sql;
exception when others then
if SQLCODE = -955 then null; else raise; end if;
end;
/


/*Inserting the data into the table applicant_skill*/
insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('1','DBMS');
insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('2','Python');
insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('3','SQL');
insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('4','Java');
insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('5','Javascript');
insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('6','HTML5');
insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('7','C');
insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('8','CSS3');
insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('9','Machine Learning');
insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('10','Cloud Computing');
insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('11','AI');
insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('12','Networking');
insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('13','R');
insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('14','XML');
SELECT * FROM skill_set;
insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('15','JSON');
insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('16','Oracle 11g');
insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('17','Microsoft Office');
insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('18','Problem Solving');
insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('19','Communication');
insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('20','Team Leading');
insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('21','Desicion Making');
/
