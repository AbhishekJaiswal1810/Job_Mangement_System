/*Inserting the data into the user_type table*/
insert /*+ ignore_row_on_dupkey_index ( user_type( id) ) */
into user_type select '1','Job Applicant' from dual union
select '2','Recruiter' from dual;


/*Inserting the data into the user_account table*/
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

/
begin
sp_insert_skillset('DBMS');
sp_insert_skillset('Python');
sp_insert_skillset('SQL');
sp_insert_skillset('Java');
sp_insert_skillset('Javascript');
sp_insert_skillset('HTML5');
sp_insert_skillset('C');
sp_insert_skillset('CSS3');
sp_insert_skillset('Machine Learning');
sp_insert_skillset('Cloud Computing');
sp_insert_skillset('AI');
sp_insert_skillset('Networking');
sp_insert_skillset('R');
sp_insert_skillset('XML');
sp_insert_skillset('JSON');
sp_insert_skillset('Oracle 11g');
sp_insert_skillset('Microsoft Office');
sp_insert_skillset('Problem Solving');
sp_insert_skillset('Communication');
sp_insert_skillset('Team Leading');
sp_insert_skillset('Desicion Making');
end;
/

--update skill_set set skill_name='Agile' where id=13;


begin
sp_company('cmp001','boston','MA','02215','9865241236');
sp_company('cmp002','boston','MA','02115','8514756325');
sp_company('cmp002','watertown','MA','05245','5624157896');
sp_company('google','boston','MA','05245','8574129645');
sp_company('FB','atlanta','GA','05245','9645781523');
sp_company('Meta','Manhattan','NY','85452','2541967852');
sp_company('Netflix','portland','MN','96402','6325957586');
sp_company('Spotify','washington','DC','02576','7845259585');
sp_company('LTI','washington','DC','02576','5186947586');
sp_company('CG','boston','MA','02215','8564729136');
sp_company('GEP','Manhattan','NY','85452','4578953215');
sp_company('PathAI','boston','MA','02115','6585451535');
sp_company('Mckenzie','dallas','TX','62054','4515368975');
sp_company('JPMC','scranton','PA','52014','9575123652');
sp_company('Dunder Mifflin','scranton','MA','53025','8545961535');
end;
/


--select* from company;
--truncate table applicant_profile;

--update company ap set state='TX' where company_id='c015';

