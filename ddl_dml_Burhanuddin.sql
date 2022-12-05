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


/*Inserting the data into the table user_type*/
insert all 
into user_type VALUES('1','Job Applicant')
into user_type VALUES('2','Recruiter')
select 1 from dual;
/

/*Inserting the data into the table user_account*/
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('Valentina@abc.com','Valentina','Valentina710','23-Sep-1979','Female', SYSTIMESTAMP, '2');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('aman@abc.com','Aman123','aman#18','02-Aug-1999','Male', SYSTIMESTAMP, '1');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('abhishek@xyzcompnay.com','Abhi','abhi@123','07-Mar-1992','Male', SYSTIMESTAMP, '2');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('abhishek@jimail.com','Abhishek123','Iabhi#798','09-May-1998','Male', SYSTIMESTAMP, '1');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('aish@abc.com','Aishwarya','aish_warya','06-Aug-1988','Female', SYSTIMESTAMP, '1');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('ajay@gogle.com','Ajay','ajay@123','28-May-1991','Male', SYSTIMESTAMP, '1');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('atisha@abc.com','Atisha123','atishaaa','03-Dec-1999','Female', SYSTIMESTAMP, '1');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('ajay96@compnay.com','Iamajay','ajay#96','27-Feb-1996','Male', SYSTIMESTAMP, '2');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('bhawna@abc.com','Bhawna','123@bhawna','31-Jan-1994','Female', SYSTIMESTAMP, '1');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('basil@xyzcompnay.com','Iambasil','basil@123','17-Jul-1991','male', SYSTIMESTAMP, '2');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('burhan@xyz.com','Burhanj','Burhanj#888','28-Aug-1999','male', SYSTIMESTAMP, '1');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('binod@gogle.com','Binod','binod@786','07-Nov-1982','Male', SYSTIMESTAMP, '1');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('charu@abc.com','Charu1','iam_Charu','22-Sep-1989','Female', SYSTIMESTAMP, '1');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('chetan@xyzcompnay.com','Chetan','Chetan@123','10-Feb-1992','Male', SYSTIMESTAMP, '2');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('chetna@cba.com','Chetna123','chetna2312','23-Dec-1997','Female', SYSTIMESTAMP, '1');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('drishti@xyz.com','Drishti','123456789','01-May-1988','Female', SYSTIMESTAMP, '1');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('dharini@abc.com','Dharini1','Dharini786','30-Apr-1981','Female', SYSTIMESTAMP, '1');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('alex@xyzcompnay.com','Alexander','Alex@741','03-Oct-1989','Male', SYSTIMESTAMP, '2');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('anny@abc.com','Annys','aNNy0901','09-Jan-1999','Female', SYSTIMESTAMP, '1');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('bobby@xyz','Bob','BobTheBuilder','02-Sep-1987','Male', SYSTIMESTAMP, '2');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('jeremy@abc.com','Jeremy','jeremeeii','12-Nov-1990','Male', SYSTIMESTAMP, '1');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('nancy@xyzcompnay.com','Nancy','nancy@1234','27-May-1992','Female', SYSTIMESTAMP, '1');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('jane@abc.com','Jane123','Jane@1678','03-Jun-1982','Female', SYSTIMESTAMP, '2');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('thomas@xyzcompnay.com','Thomas','thomas@123','04-Mar-1991','Male', SYSTIMESTAMP, '2');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('roger@jimail.com','Rengie','Roger22','22-Apr-1997','Male', SYSTIMESTAMP, '2');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('natalie@xyzcompnay.com','Natalie','NatalieXYZ','31-Jul-1992','Female', SYSTIMESTAMP, '2');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('roger@abccompany.com','Roger','IamRoger','02-Oct-1987','Male', SYSTIMESTAMP, '2');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('sophia@xyzcompnay.com','Sophia','sophieD','17-May-1982','Female', SYSTIMESTAMP, '2');
insert /*+ ignore_row_on_dupkey_index ( user_account(email) ) */ into
user_account
(email, user_name, password, date_of_birth, gender, registration_date, user_type_id)
values
('dana@abc.com','Dana','daaanaaa','20-Aug-1984','Female', SYSTIMESTAMP, '2');


/*Creating the table applicant_skill*/
CREATE TABLE applicant_skill(
skill_set_id VARCHAR2(20) NOT NULL,
skill_level VARCHAR2(20) NOT NULL,
applicant_applicants_id VARCHAR2(20) NOT NULL,
CONSTRAINT Applicant_skill_Skill_set_FK FOREIGN KEY(skill_set_id) REFERENCES skill_set(id),
CONSTRAINT Applicant_skill_Applicant_FK FOREIGN KEY(applicant_applicants_id) REFERENCES applicant_profile(applicants_id)
);

/*Creating the table skill_set*/
CREATE TABLE skill_set(
id VARCHAR2(20) not null,
skill_name VARCHAR2(20) not null,
CONSTRAINT skill_set PRIMARY KEY(id)
);
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
SELECT * FROM skill_set;insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('16','Oracle 11g');
SELECT * FROM skill_set;insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('17','Microsoft Office');
SELECT * FROM skill_set;insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('18','Problem Solving');
SELECT * FROM skill_set;insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('19','Communication');
SELECT * FROM skill_set;insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('20','Team Leading');
SELECT * FROM skill_set;insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set
(id, skill_name)
values
('21','Desicion Making');
/