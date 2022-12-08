CREATE OR REPLACE TRIGGER login_trigger
AFTER LOGON ON SCHEMA
BEGIN
    INSERT INTO user_login_details VALUES(USER, SYSDATE, 'Login');
END;
/


CREATE OR REPLACE TRIGGER logoff_trigger
BEFORE LOGOFF ON SCHEMA
BEGIN
    INSERT INTO user_login_details VALUES(USER, SYSDATE, 'Logout');
END;
/

commit;

desc user_login_details;

select * from user_login_details; 


