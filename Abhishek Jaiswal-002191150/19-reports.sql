/*to find users' geographic distibution by state, only for those who has sent out at least 1 application.*/
SET SERVEROUTPUT ON;

BEGIN
dbms_output.put_line('List of users with atleast 1 application with geographic distribution by state');
dbms_output.put_line('----------------------------------');
END;
/

select a.state, count(distinct a.user_account_email) as cnt
from applicant_profile a
join job_applications b
on a.applicants_id=b.applicant_applicants_id
group by a.state;

BEGIN
dbms_output.put_line('List of appliants who sent out application within 90 days after or on the registration date');
dbms_output.put_line('----------------------------------');
END;
/

select distinct a.user_name as passionate_applicants
from user_account a
join applicant_profile b
on a.email=b.user_account_email
join job_applications c
on b.applicants_id=c.applicant_applicants_id
where (to_date(a.registration_date)-to_date(c.applied_date)) <= 90;

BEGIN
dbms_output.put_line('List of top applicants with more than 1 job applications ');
dbms_output.put_line('----------------------------------');
END;
/

select applicants_id,first_name,last_name,user_account_email,count(*)
from (select a.applicants_id, a.first_name, a.last_name,
a.user_account_email,j.applicant_applicants_id
from applicant_profile a
join
job_applications j
on a.applicants_id=j.applicant_applicants_id)
group by (applicants_id,first_name,last_name,user_account_email)
having count(*)>1;

BEGIN
dbms_output.put_line('List of top recruiter with more than 1 job postings ');
dbms_output.put_line('----------------------------------');
END;
/

select recruiter_id,first_name,last_name,user_account_email,count(*)
from (select a.recruiter_id, a.first_name, a.last_name,
a.user_account_email,j.recruiter_recruiter_id
from recruiter a
join
job_posting j
on a.recruiter_id=j.recruiter_recruiter_id)
group by (recruiter_id,first_name,last_name,user_account_email)
having count(*)>1;

