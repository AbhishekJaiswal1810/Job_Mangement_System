create or replace TRIGGER UPDATE_COMPANY_APPLICANT 
BEFORE UPDATE OF STATUS ON JOB_APPLICATIONS 
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
DECLARE
    STATUS JOB_APPLICATIONS.STATUS%TYPE;
    APPLID JOB_APPLICATIONS.APPLICANT_APPLICANTS_ID%TYPE;
    JOBID JOB_APPLICATIONS.JOB_POSTING_JOB_ID%TYPE;
    APPID JOB_APPLICATIONS.APPLICANT_APPLICANTS_ID%TYPE;
    RECID JOB_POSTING.RECRUITER_RECRUITER_ID%TYPE;
    CMPID RECRUITER.COMPANY_ID%TYPE;
    CMPNM COMPANY.COMPANY_NAME%TYPE;
BEGIN
    STATUS:=:NEW.STATUS;
    APPLID:=:NEW.APPLICANT_APPLICANTS_ID;
    IF (STATUS='HIRED') THEN
        JOBID:=:NEW.JOB_POSTING_JOB_ID;
        APPID:=:NEW.APPLICANT_APPLICANTS_ID;
        SELECT RECRUITER_RECRUITER_ID INTO RECID
        FROM JOB_POSTING WHERE JOB_ID=JOBID;
        SELECT COMPANY_ID INTO CMPID
        FROM RECRUITER WHERE RECRUITER_ID=RECID;
        SELECT COMPANY_NAME INTO CMPNM
        FROM COMPANY WHERE COMPANY_ID=CMPID;
        UPDATE APPLICANT_PROFILE
        SET CURRENT_COMPANY=CMPNM
        WHERE APPLICANTS_ID=APPLID;
    END IF;
END;