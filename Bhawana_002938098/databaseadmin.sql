declare
userexist integer;
begin
    select count(*) into userexist from dba_users where username='DMDDJOBPORTALSYSADMIN';
    if (userexist = 0) then
        execute immediate 'create user DMDDjobportalsysadmin identified by AdminAccess#12345';
        execute immediate 'grant create session to DMDDjobportalsysadmin with admin option';
        execute immediate 'grant create table, create view, create procedure, create sequence to DMDDjobportalsysadmin with admin option';
        execute immediate 'GRANT UNLIMITED TABLESPACE TO DMDDjobportalsysadmin';
        execute IMMEDIATE 'grant create user to DMDDjobportalsysadmin with admin option';
        execute immediate 'grant alter any table,delete any table to DMDDjobportalsysadmin with admin option';
        execute immediate 'grant create role, alter any role, drop any role, grant any role to DMDDjobportalsysadmin with admin option';       
        execute immediate 'grant select on dba_users to DMDDjobportalsysadmin';
        execute immediate 'grant drop user to DMDDjobportalsysadmin with admin option';
    end if;
end;
/


begin
    for r in (select table_name from all_tables)
    loop
        execute immediate 'grant select on' || r.table_name|| 'to DMDDjobportalsysadmin with admin option';
    end loop;
end;
/
