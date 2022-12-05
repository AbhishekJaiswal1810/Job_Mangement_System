SET SERVEROUTPUT ON;

create or replace procedure sp_insert_skillset
(
skill_name in VARCHAR2
)
is
    id number default skill_set_sequence.nextVal;
begin
    insert /*+ ignore_row_on_dupkey_index ( skill_set ( id ) ) */ into skill_set values(id,skill_name);
    commit;
end sp_insert_skillset;
/

create or replace procedure sp_check_useremail(
    useraccount_email in varchar2,
    out_email out number
)
as
    vCount number;
begin
    select count(*) into vCount
    from user_account
    where email = useraccount_email;
    
    if (vCount = 0) then
        dbms_output.put_line('**USER EMAIL DOES NOT EXIST**');
        out_email:=0;
    else
        out_email:=1;
    end if;
end sp_check_useremail;
/

create or replace procedure sp_insert_applicantprofile
(
first_name in VARCHAR2,
middle_name in VARCHAR2,
last_name in VARCHAR2,
street_name in VARCHAR2,
city in VARCHAR2,
state in VARCHAR2,
zip_code in VARCHAR2,
contect_number in VARCHAR2,
yoe in number,
target_industry in VARCHAR2,
current_company in VARCHAR2,
current_salary in number,
highest_education in VARCHAR2,
"race/ethnicity" in VARCHAR2,
veteran_status in VARCHAR2,
disability_status in VARCHAR2,
user_account_email in VARCHAR2
)
is
applicants_id number default applicant_profile_sequence.nextVal;
out_check_email number;
begin
    sp_check_useremail(user_account_email,out_check_email);
    if(out_check_email=1) then
        insert /*+ ignore_row_on_dupkey_index ( applicant_profile (applicants_id) ) */ into applicant_profile values(applicants_id,
        first_name,middle_name,last_name,street_name,city,state,zip_code,contect_number,yoe,target_industry,current_company,
        current_salary,highest_education,"race/ethnicity",veteran_status,disability_status,user_account_email);
    else
        dbms_output.put_line('**USER EMAIL DOES NOT EXIST**');
    end if;
end sp_insert_applicantprofile;
/


create or replace procedure sp_check_skillset(
    skill_setid in number,
    out_res out number
)
as
    vCount number;
begin
    select count(*)
    into vCount
    from skill_set
    where id = skill_setid;
    
    if(vCount=0) then
        dbms_output.put_line('**SKILL SET ID DOES NOT EXIST**');
        out_res:= 0;
    else
        out_res:= 1;
    end if;
end;
/

create or replace procedure sp_check_applicant(
    applicantid in number,
    output_res out number
)
as
    vCount number;
begin
    select count(*)
    into vCount
    from applicant_profile
    where applicants_id = applicantid;
    
    if(vCount=0) then
        dbms_output.put_line('**APPLICANT ID DOES NOT EXIST**');
        output_res:= 0;
    else
        output_res:= 1;
    end if;
end;
/

create or replace procedure sp_insert_applicantskill(
    skill_set_id in number,
    skill_level in varchar2,
    applicant_applicants_id in number
)
is
applicant_skill_id number default applicant_skill_sequence.nextVal;
out_check_skillid number;
out_check_applicantid number;
begin
    sp_check_skillset(skill_set_id,out_check_skillid);
    sp_check_applicant(applicant_applicants_id,out_check_applicantid);
    if(out_check_skillid=1 and out_check_applicantid=1) then
        insert /*+ ignore_row_on_dupkey_index (applicant_skill( applicant_skill_id )) */ into applicant_skill values(applicant_skill_id,skill_set_id, skill_level,applicant_applicants_id);
    else
        dbms_output.put_line('**APPLICANT ID DOES NOT EXIST**');
    end if;
end;
/

create or replace procedure sp_company(
    company_name in VARCHAR2,
    city in VARCHAR2,
    state in VARCHAR2,
    zipcode in VARCHAR2,
    contact_number VARCHAR2
)
is
company_id number default company_sequence.nextVal;
begin
    insert /*+ ignore_row_on_dupkey_index ( company ( company_id ) ) */ into company values(company_id, company_name, city, state, zipcode,contact_number);
end;
/


create or replace procedure sp_check_company(
    companyid in number,
    out_company out number
)
as
    vCount number;
begin
    select count(*)
    into vCount
    from company
    where company_id = companyid;
    
    if(vCount=0) then
        dbms_output.put_line('**COMPANY ID DOES NOT EXIST**');
        out_company:=0;
    else
        out_company:=1;
    end if;
end;
/



create or replace procedure sp_insertrecruiter(
    first_name in VARCHAR2,
    last_name in VARCHAR2,
    contact_number in VARCHAR2,
    candidate_type in VARCHAR2,
    company_id in number,
    user_account_email in VARCHAR2
)
is
recruiter_id number default recruiter_sequence.nextVal;
out_check_email number;
out_check_company number;
begin
    sp_check_useremail(user_account_email,out_check_email);
    sp_check_company(company_id,out_check_company);
    if(out_check_email=1 and out_check_company=1) then
        insert /*+ ignore_row_on_dupkey_index ( recruiter,4,7) */ into recruiter values(recruiter_id, first_name, last_name, contact_number, candidate_type, company_id, user_account_email);
    else
        dbms_output.put_line('**COMPANY ID OR USER EMAIL DOES NOT EXIST**');
    end if;
end;
/


create or replace procedure sp_check_recruiter(
    recruitersid in number,
    out_recruiter_res out number
)
as
    vCount number;
begin
    select count(*)
    into vCount
    from recruiter
    where recruiter_id = recruitersid;
    
    if(vCount=0) then
        dbms_output.put_line('**RECRUITER ID DOES NOT EXIST**');
        out_recruiter_res:=0;
    else
        out_recruiter_res:=1;
    end if;
end;
/
    

create or replace procedure sp_jobposting(
    job_type in varchar,
    experience_required in number,
    contact_person_name in varchar,
    contact_person_email in varchar,
    contact_person_last_name in varchar,
    post_date in date,
    job_position in varchar,
    availability_status in char,
    salary in number,
    recruiter_recruiter_id in varchar
)
is
job_id number default job_posting_sequence.nextVal;
out_check_recruiterid number;

begin
    sp_check_recruiter(recruiter_recruiter_id,out_check_recruiterid);
    if(out_check_recruiterid=1) then
        insert into job_posting values(job_id, job_type, experience_required, contact_person_name, contact_person_email,
        contact_person_last_name, post_date, job_position, availability_status, salary, recruiter_recruiter_id);
    else
        dbms_output.put_line('**RECRUITER ID DOES NOT EXIST**');
    end if;
end;
/

create or replace procedure sp_check_jobpostingid(
    jobpostingid in number,
    out_jobid_res out number
)
as
    vCount number;
begin
    select count(*)
    into vCount
    from job_posting
    where job_id = jobpostingid;
    
    if(vCount=0) then
        out_jobid_res:= 0;
        dbms_output.put_line('**JOB ID DOES NOT EXIST**');
    else
        out_jobid_res:= 1;
    end if;
end;
/


create or replace procedure sp_insert_jobskill(
    skill_set_id in number,
    skill_level in VARCHAR2,
    job_posting_job_id in number
)
is
job_skill_id number default job_skill_sequence.nextVal;
out_check_skillid number;
out_job_postingid number;
begin
    sp_check_skillset(skill_set_id,out_check_skillid);
    sp_check_jobpostingid(job_posting_job_id,out_job_postingid);
    if(out_check_skillid = 1 and out_job_postingid = 1) then
        insert into job_skill values(job_skill_id, skill_set_id, skill_level, job_posting_job_id);
    else
        dbms_output.put_line('**SKILL SET OR JOB POSTING ID DOES NOT EXIST**');
    end if;
end;
/


create or replace procedure sp_jobapplications(
    status in varchar2,
    applied_date in date,
    applicant_applicants_id in varchar2,
    job_posting_job_id in varchar2
)
is
application_id number default job_applications_sequence.nextVal;
out_check_applicantid number;
out_check_jobpostingid number;
begin
    sp_check_applicant(applicant_applicants_id,out_check_applicantid);
    sp_check_jobpostingid(job_posting_job_id,out_check_jobpostingid);
    if (out_check_applicantid = 1 and out_check_jobpostingid = 1) then
        insert into job_applications values(application_id, status, applied_date, applicant_applicants_id, job_posting_job_id);
    else
        dbms_output.put_line('**APPLICANT OR JOB POSTING ID DOES NOT EXIST**');
    end if;
end;
/






