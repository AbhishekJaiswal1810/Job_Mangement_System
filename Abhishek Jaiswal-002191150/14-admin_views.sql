create or replace view edu_by_state as  
select state, count(highest_education) as num_of_edu
from applicant_profile
group by state;

create or replace view applicant_salary as
select city, avg(current_salary) as avg_salary
from applicant_profile
group by city;

create or replace view applicants_with_multiple_profiles as
select applicants_id,first_name,last_name,contect_number,user_account_email
from applicant_profile where user_account_email in (select user_account_email
from applicant_profile
group by user_account_email
HAVING count(user_account_email)>1);

create or replace view edu_by_state as
select count(highest_education) as cnt
from applicant_profile
group by state;

create or replace view highly_active_applicants as
select ap.applicants_id,ap.first_name,u.email,a.application_id,a.status,a.applied_date
from applicant_profile ap join job_applications a
on ap.applicants_id=a.applicant_applicants_id
join user_account u
on ap.user_account_email=u.email
where a.applied_date between u.registration_date and last_day(add_months(trunc(u.registration_date,'mm'),3));

create or replace view user_2022 as
select EMAIL,USER_NAME,PASSWORD,DATE_OF_BIRTH,GENDER,REGISTRATION_DATE,USER_TYPE_ID from user_account
where EXTRACT(YEAR from registration_date)=2022;

create or replace view job_applications_total as
select APPLICATION_ID,STATUS,APPLIED_DATE,APPLICANT_APPLICANTS_ID,JOB_POSTING_JOB_ID from job_applications;

create or replace view applicant_salary as
select city, avg(current_salary) as avg_salary
from applicant_profile
group by city;

create or replace view all_job_applications as
select APPLICATION_ID,STATUS,APPLIED_DATE,APPLICANT_APPLICANTS_ID,JOB_POSTING_JOB_ID
from job_applications;

create or replace view recent_job_applications as
select APPLICATION_ID,STATUS,APPLIED_DATE,APPLICANT_APPLICANTS_ID,JOB_POSTING_JOB_ID
from job_applications 
where applied_date between add_months(trunc(sysdate,'mm'),-1) and last_day(add_months(trunc(sysdate,'mm'),-1));

create or replace view active_job_postings as
select JOB_ID,JOB_TYPE,EXPERIENCE_REQUIRED,CONTACT_PERSON_NAME,CONTACT_PERSON_EMAIL,CONTACT_PERSON_LAST_NAME,POST_DATE,JOB_POSITION,AVAILABILITY_STATUS,SALARY,RECRUITER_RECRUITER_ID from 
job_posting
where availability_status='Y';

create or replace view recent_job_postings as
select job_id,job_position,job_type,availability_status,post_date,contact_person_name,contact_person_email
from job_posting 
where post_date between add_months(trunc(sysdate,'mm'),-1) and last_day(add_months(trunc(sysdate,'mm'),-1));

create or replace view all_job_postings as
select job_id,job_position,job_type,availability_status,post_date,contact_person_name,contact_person_email
from job_posting;