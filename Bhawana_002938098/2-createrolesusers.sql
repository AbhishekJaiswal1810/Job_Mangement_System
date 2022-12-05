-- create ROLE--
CREATE OR REPLACE PROCEDURE create_role( role_name IN VARCHAR2 ) IS
PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
  EXECUTE IMMEDIATE 'CREATE ROLE '||role_name;
EXCEPTION
  WHEN OTHERS THEN
    -- ORA-01921: If The role name exists, ignore the error.
    IF SQLCODE <> -01921 THEN
      RAISE;
    END IF;
END create_role;
/

begin
Create_role('Applicant');
Create_role('Recruiter');
Create_role('Company_Manager');
end;
/


--create admin--
--declare 
--userexist integer;
--BEGIN
--    select count(*) into userexist from dba_users where username='DMDDADMIN1';
--    if (userexist = 0) THEN
--        execute immediate 'create user dmddadmin1 identified by AdminAccess#12345';
--        execute immediate 'grant create session to dmddadmin1';
--    end if;
--END;
--/

--create applicant--
declare 
userexist integer;
BEGIN
    select count(*) into userexist from dba_users where username='APPLICANT1';
    if (userexist = 0) THEN
        execute immediate 'create user applicant1 identified by ApplicantAccess#12345';
        execute immediate 'grant create session to applicant1';
    end if;
END;
/

--create recruiter--

declare 
userexist integer;
BEGIN
    select count(*) into userexist from dba_users where username='RECRUITER1';
    if (userexist = 0) THEN
        execute immediate 'create user recruiter1 identified by RecruiterAccess#12345';
        execute immediate 'grant create session to recruiter1';
    end if;
END;
/

--create company manager--
declare 
userexist integer;
BEGIN
    select count(*) into userexist from dba_users where username='COMPANYMANAGER1';
    if (userexist = 0) THEN
        execute immediate 'create user companymanager1 identified by ManagerAccess#12345';
        execute immediate 'grant create session to companymanager1';
    end if;
END;
/


--grant permission to admin role--
--grant create table, alter any table, create view, create procedure to dmddadmin;--
